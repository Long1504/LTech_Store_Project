package com.techstore.dto.response;

import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Data
public class OrderResponse {
    private String orderId;
    private String orderCode;
    private BigDecimal totalAmount;
    private String orderStatus;
    private String note;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private String recipientName;
    private String recipientPhone;
    private String city;
    private String district;
    private String ward;
    private String detailAddress;
    private List<OrderItemResponse> orderItems;
    private PaymentResponse payment;
}
