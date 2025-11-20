package com.techstore.dto.request;

import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class OrderRequest {
    private BigDecimal totalAmount;
    private String note;
    private String recipientName;
    private String recipientPhone;
    private String city;
    private String district;
    private String ward;
    private String detailAddress;
    private List<OrderItemRequest> orderItems;
    private String paymentMethod;
    private String discountCode;
}
