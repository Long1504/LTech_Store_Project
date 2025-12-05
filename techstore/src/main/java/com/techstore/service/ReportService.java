package com.techstore.service;

import com.techstore.dto.response.BestSellingProductResponse;
import com.techstore.dto.response.CustomerAndOrderLineChartResponse;
import com.techstore.dto.response.CustomerReportResponse;
import com.techstore.dto.response.RevenueReportResponse;
import com.techstore.repository.OrderRepository;
import com.techstore.repository.ProductVariantRepository;
import com.techstore.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Year;
import java.time.YearMonth;
import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAdjusters;
import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ReportService {
    private final ProductVariantRepository productVariantRepository;
    private final OrderRepository orderRepository;
    private final UserRepository userRepository;

    public int getTotalStock() {
        return productVariantRepository.getTotalStock();
    }

    public RevenueReportResponse getRevenueReport() {
        return RevenueReportResponse.builder()
                .today(orderRepository.getTodayRevenue())
                .month(orderRepository.getMonthlyRevenue())
                .year(orderRepository.getYearlyRevenue())
                .build();
    }

    public CustomerReportResponse getCustomerReport() {
        return CustomerReportResponse.builder()
                .today(userRepository.countToday())
                .month(userRepository.countMonth())
                .year(userRepository.countYear())
                .build();
    }

    // DAILY report for current month
    public CustomerAndOrderLineChartResponse getDailyReport() {
        List<Object[]> orderRows = orderRepository.getDailyOrderCounts();
        List<Object[]> userRows = userRepository.getDailyUserCounts();

        YearMonth ym = YearMonth.now();
        int daysInMonth = ym.lengthOfMonth();

        List<String> labels = new ArrayList<>(daysInMonth);
        List<Long> orders = new ArrayList<>(daysInMonth);
        List<Long> customers = new ArrayList<>(daysInMonth);

        // build maps day -> count
        Map<Integer, Long> orderMap = rowsToMap(orderRows);
        Map<Integer, Long> userMap = rowsToMap(userRows);

        DateTimeFormatter fmt = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate first = LocalDate.of(Year.now().getValue(), ym.getMonth(), 1);

        for (int d = 1; d <= daysInMonth; d++) {
            LocalDate date = first.withDayOfMonth(d);
            labels.add(date.format(fmt));         // labels as full date (yyyy-MM-dd)
            orders.add(orderMap.getOrDefault(d, 0L));
            customers.add(userMap.getOrDefault(d, 0L));
        }

        return CustomerAndOrderLineChartResponse.builder()
                .labels(labels)
                .orders(orders)
                .customers(customers)
                .build();
    }

    // MONTHLY report for current year
    public CustomerAndOrderLineChartResponse getMonthlyReport() {
        List<Object[]> orderRows = orderRepository.getMonthlyOrderCounts();
        List<Object[]> userRows = userRepository.getMonthlyUserCounts();

        Map<Integer, Long> orderMap = rowsToMap(orderRows);
        Map<Integer, Long> userMap = rowsToMap(userRows);

        List<String> labels = new ArrayList<>(12);
        List<Long> orders = new ArrayList<>(12);
        List<Long> customers = new ArrayList<>(12);

        int currentYear = Year.now().getValue();
        for (int m = 1; m <= 12; m++) {
            labels.add(String.format("%02d", m));   // "01","02",...
            orders.add(orderMap.getOrDefault(m, 0L));
            customers.add(userMap.getOrDefault(m, 0L));
        }

        return CustomerAndOrderLineChartResponse.builder()
                .labels(labels)
                .orders(orders)
                .customers(customers)
                .build();
    }

    // YEARLY report across years present in DB (we will align to last 5 years)
    public CustomerAndOrderLineChartResponse getYearlyReport() {
        List<Object[]> orderRows = orderRepository.getYearlyOrderCounts();
        List<Object[]> userRows = userRepository.getYearlyUserCounts();

        Map<Integer, Long> orderMap = rowsToMap(orderRows);
        Map<Integer, Long> userMap = rowsToMap(userRows);

        // choose a window: last 5 years including current
        int currentYear = Year.now().getValue();
        int startYear = currentYear - 4;

        List<String> labels = new ArrayList<>(5);
        List<Long> orders = new ArrayList<>(5);
        List<Long> customers = new ArrayList<>(5);

        for (int y = startYear; y <= currentYear; y++) {
            labels.add(String.valueOf(y));
            orders.add(orderMap.getOrDefault(y, 0L));
            customers.add(userMap.getOrDefault(y, 0L));
        }

        return CustomerAndOrderLineChartResponse.builder()
                .labels(labels)
                .orders(orders)
                .customers(customers)
                .build();
    }

    // helper: convert List<Object[]> rows -> Map<Integer,Long>
    // each row expected: [key, count]
    private Map<Integer, Long> rowsToMap(List<Object[]> rows) {
        Map<Integer, Long> map = new HashMap<>();
        if (rows == null) return map;
        for (Object[] r : rows) {
            if (r == null || r.length < 2) continue;
            Integer key = toInteger(r[0]);
            Long cnt = toLong(r[1]);
            if (key != null) map.put(key, cnt != null ? cnt : 0L);
        }
        return map;
    }

    private Integer toInteger(Object o) {
        if (o == null) return null;
        if (o instanceof Number) return ((Number) o).intValue();
        try { return Integer.parseInt(o.toString()); } catch (Exception ex) { return null; }
    }

    private Long toLong(Object o) {
        if (o == null) return 0L;
        if (o instanceof Number) return ((Number) o).longValue();
        try { return Long.parseLong(o.toString()); } catch (Exception ex) { return 0L; }
    }

    public List<BestSellingProductResponse> getBestSellingProducts(String period, int limit) {
        LocalDateTime startDate = null;
        LocalDateTime endDate = null;

        LocalDate today = LocalDate.now();

        switch (period.toLowerCase()) {
            case "daily":
                startDate = today.atStartOfDay();
                endDate = today.atTime(23, 59, 59);
                break;
            case "monthly":
                startDate = today.withDayOfMonth(1).atStartOfDay();
                endDate = today.with(TemporalAdjusters.lastDayOfMonth()).atTime(23, 59, 59);
                break;
            case "yearly":
                startDate = today.withDayOfYear(1).atStartOfDay();
                endDate = today.with(TemporalAdjusters.lastDayOfYear()).atTime(23, 59, 59);
                break;
        }

        List<Object[]> rows = productVariantRepository.findBestSellingProductsByPeriod(
                startDate != null ? java.sql.Timestamp.valueOf(startDate) : null,
                endDate != null ? java.sql.Timestamp.valueOf(endDate) : null,
                limit
        );

        return rows.stream()
                .map(row -> BestSellingProductResponse.builder()
                        .imageUrl((String) row[0])
                        .productName((String) row[1])
                        .color((String) row[2])
                        .originalPrice((BigDecimal) row[3])
                        .promotionalPrice((BigDecimal) row[4])
                        .soldQuantity(((Number) row[5]).longValue())
                        .revenue((BigDecimal) row[6])
                        .build())
                .collect(Collectors.toList());
    }
}
