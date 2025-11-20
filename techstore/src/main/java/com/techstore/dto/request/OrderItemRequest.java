package com.techstore.dto.request;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class OrderItemRequest {
    private String productVariantId;
    private Integer quantity;
    private BigDecimal price;
}
