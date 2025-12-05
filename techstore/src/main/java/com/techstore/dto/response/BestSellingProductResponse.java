package com.techstore.dto.response;

import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;

@Data
@Builder
public class BestSellingProductResponse {
    private String imageUrl;
    private String productName;
    private String color;
    private BigDecimal originalPrice;
    private BigDecimal promotionalPrice;
    private Long soldQuantity;
    private BigDecimal revenue;
}
