package com.techstore.dto.request;

import lombok.Data;

import java.util.List;

@Data
public class ProductCreateRequest {
    private String categoryId;
    private String brandId;
    private String productName;
    private Integer warrantyMonths;
    private String productStatus;
    private List<ImageRequest> images;
}
