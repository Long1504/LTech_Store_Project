package com.techstore.dto.response;

import lombok.Data;
import java.time.LocalDateTime;

@Data
public class ReviewResponse {
    private String reviewId;
    private String productImageUrl;
    private String userFullName;
    private Integer rating;
    private String comment;
    private LocalDateTime createdAt;
}
