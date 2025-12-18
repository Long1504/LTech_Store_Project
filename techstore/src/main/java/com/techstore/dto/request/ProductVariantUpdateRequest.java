package com.techstore.dto.request;

import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class ProductVariantUpdateRequest {
    private String color;
    private BigDecimal originalPrice;
    private BigDecimal promotionalPrice;
    private Integer stock;
    private Boolean isDefault;
    private List<ProductSpecRequest> productSpecs;
}
