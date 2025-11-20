package com.techstore.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductOverviewResponse {
    private String productId;
    private String productName;
    private String categoryName;
    private String brandName;
    private BigDecimal originalPrice;
    private BigDecimal promotionalPrice;
    private String imageURL;
}