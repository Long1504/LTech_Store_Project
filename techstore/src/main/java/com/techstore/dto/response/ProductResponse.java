package com.techstore.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductResponse {
    private String productId;
    private String productName;
    private Integer warrantyMonths;
    private String productStatus;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private CategoryResponse category;
    private BrandResponse brand;
    private List<ProductVariantResponse> productVariants;
    private List<ImageResponse> images;
    private List<ReviewResponse> reviews;
}