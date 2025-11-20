package com.techstore.dto.response;

import lombok.Data;
import java.time.LocalDateTime;

@Data
public class ReviewResponse {
    private String reviewId;
    private Integer rating;
    private String comment;
    private LocalDateTime createdAt;
    private UserResponse userResponse;
}
