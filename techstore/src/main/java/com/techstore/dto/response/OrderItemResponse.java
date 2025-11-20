package com.techstore.dto.response;

import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;

@Data
@Builder
public class OrderItemResponse {
    private String orderItemId;
    private String productVariantId;
    private String productName;
    private String productImageUrl;
    private String color;
    private Integer quantity;
    private BigDecimal price;
    private BigDecimal subTotal;
}
