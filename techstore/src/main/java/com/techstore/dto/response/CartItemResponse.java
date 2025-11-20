package com.techstore.dto.response;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class CartItemResponse {
    private String cartItemId;
    private String productVariantId;
    private String productName;
    private String productImageUrl;
    private String color;
    private BigDecimal originalPrice;
    private BigDecimal promotionalPrice;
    private Integer quantity;
    private BigDecimal subTotal;
}
