package com.techstore.repository;

import com.techstore.dto.response.OrderResponse;
import com.techstore.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, String> {

    List<Order> findAllByOrderByCreatedAtDesc();

    List<Order> findAllByOrderStatusOrderByCreatedAtDesc(String orderStatus);

    List<Order> findAllByUser_UserIdOrderByCreatedAtDesc(String userId);
}
