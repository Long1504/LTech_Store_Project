package com.techstore.repository;

import com.techstore.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.math.BigDecimal;
import java.util.List;

public interface OrderRepository extends JpaRepository<Order, String> {

    List<Order> findAllByOrderByCreatedAtDesc();

    List<Order> findAllByOrderStatusOrderByCreatedAtDesc(String orderStatus);

    List<Order> findAllByUser_UserIdOrderByCreatedAtDesc(String userId);

    @Query("SELECT COALESCE(SUM(o.totalAmount), 0) " +
            "FROM Order o " +
            "WHERE o.orderStatus = 'COMPLETED' AND DATE(o.createdAt) = CURRENT_DATE")
    BigDecimal getTodayRevenue();

    @Query("SELECT COALESCE(SUM(o.totalAmount), 0) " +
            "FROM Order o " +
            "WHERE o.orderStatus = 'COMPLETED' " +
            "AND YEAR(o.createdAt) = YEAR(CURRENT_DATE) " +
            "AND MONTH(o.createdAt) = MONTH(CURRENT_DATE)")
    BigDecimal getMonthlyRevenue();

    @Query("SELECT COALESCE(SUM(o.totalAmount), 0) " +
            "FROM Order o " +
            "WHERE o.orderStatus = 'COMPLETED' " +
            "AND YEAR(o.createdAt) = YEAR(CURRENT_DATE)")
    BigDecimal getYearlyRevenue();

    // daily: returns rows (day, order_count) for current month
    @Query(value = "SELECT DAY(o.created_at) AS d, COUNT(*) AS cnt " +
            "FROM orders o " +
            "WHERE MONTH(o.created_at) = MONTH(CURRENT_DATE()) " +
            "  AND YEAR(o.created_at) = YEAR(CURRENT_DATE()) " +
            "GROUP BY DAY(o.created_at) " +
            "ORDER BY d", nativeQuery = true)
    List<Object[]> getDailyOrderCounts();

    // monthly: returns rows (month, order_count) for current year
    @Query(value = "SELECT MONTH(o.created_at) AS m, COUNT(*) AS cnt " +
            "FROM orders o " +
            "WHERE YEAR(o.created_at) = YEAR(CURRENT_DATE()) " +
            "GROUP BY MONTH(o.created_at) " +
            "ORDER BY m", nativeQuery = true)
    List<Object[]> getMonthlyOrderCounts();

    // yearly: returns rows (year, order_count) across years
    @Query(value = "SELECT YEAR(o.created_at) AS y, COUNT(*) AS cnt " +
            "FROM orders o " +
            "GROUP BY YEAR(o.created_at) " +
            "ORDER BY y", nativeQuery = true)
    List<Object[]> getYearlyOrderCounts();

}
