package com.techstore.dto.request;

import lombok.Data;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

@Data
public class ProductVariantCreateRequest {
    private String productId;
    private String color;
    private BigDecimal originalPrice;
    private BigDecimal promotionalPrice;
    private Integer stock;
    private Boolean isDefault;
    private List<ProductSpecRequest> productSpecs;
}
