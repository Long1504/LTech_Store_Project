package com.techstore.dto.request;

import lombok.Data;

@Data
public class ReviewRequest {
    private Integer productId;
    private Integer userId;
    private Integer rating;
    private String comment;
}
