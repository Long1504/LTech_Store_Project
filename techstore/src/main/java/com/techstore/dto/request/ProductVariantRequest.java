package com.techstore.dto.request;

import lombok.Data;

import java.util.Set;

@Data
public class ProductVariantRequest {
    private Double originalPrice;
    private Double promotionalPrice;
    private Integer stock;
    private Boolean isDefault;
    private Set<ProductSpecRequest> specs;
}
