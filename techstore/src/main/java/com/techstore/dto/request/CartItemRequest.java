package com.techstore.dto.request;

import lombok.Data;

@Data
public class CartItemRequest {
    private String productVariantId;
    private Integer quantity;
}
