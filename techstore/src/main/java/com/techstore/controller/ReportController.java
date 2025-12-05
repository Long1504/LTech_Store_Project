package com.techstore.controller;

import com.techstore.dto.response.*;
import com.techstore.service.ReportService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/reports")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class ReportController {
    private final ReportService reportService;

    @GetMapping("/stock")
    public ApiResponse<Integer> getTotalStock() {
        return ApiResponse.<Integer>builder()
                .result(reportService.getTotalStock())
                .build();
    }

    @GetMapping("/revenue")
    public ApiResponse<RevenueReportResponse> getRevenueReport() {
        return ApiResponse.<RevenueReportResponse>builder()
                .result(reportService.getRevenueReport())
                .build();
    }

    @GetMapping("/customer")
    public ApiResponse<CustomerReportResponse> getCustomerReport() {
        return ApiResponse.<CustomerReportResponse>builder()
                .result(reportService.getCustomerReport())
                .build();
    }

    @GetMapping("/customer-order/daily")
    public ApiResponse<CustomerAndOrderLineChartResponse> getCustomerDaily() {
        return ApiResponse.<CustomerAndOrderLineChartResponse>builder()
                .result(reportService.getDailyReport())
                .build();
    }

    @GetMapping("/customer-order/monthly")
    public ApiResponse<CustomerAndOrderLineChartResponse> getCustomerMonthly() {
        return ApiResponse.<CustomerAndOrderLineChartResponse>builder()
                .result(reportService.getMonthlyReport())
                .build();
    }

    @GetMapping("/customer-order/yearly")
    public ApiResponse<CustomerAndOrderLineChartResponse> getCustomerYearly() {
        return ApiResponse.<CustomerAndOrderLineChartResponse>builder()
                .result(reportService.getYearlyReport())
                .build();
    }

    @GetMapping("/best-selling/{period}")
    public ApiResponse<List<BestSellingProductResponse>> getBestSellingProducts(@PathVariable String period) {
        return ApiResponse.<List<BestSellingProductResponse>>builder()
                .result(reportService.getBestSellingProducts(period, 10))
                .build();
    }

}
