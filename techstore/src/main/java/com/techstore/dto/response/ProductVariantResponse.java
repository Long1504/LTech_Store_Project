package com.techstore.dto.response;

import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class ProductVariantResponse {
    private String productVariantId;
    private String color;
    private BigDecimal originalPrice;
    private BigDecimal promotionalPrice;
    private Integer stock;
    private Boolean isDefault;
    private List<ProductSpecResponse> productSpecs;
}
