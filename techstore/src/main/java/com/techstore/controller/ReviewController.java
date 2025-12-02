package com.techstore.controller;

import com.techstore.dto.request.ReviewRequest;
import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.ReviewResponse;
import com.techstore.service.ReviewService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/reviews")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class ReviewController {
    private final ReviewService reviewService;

    @PostMapping()
    public ApiResponse<ReviewResponse> createReview(ReviewRequest request) {
        return ApiResponse.<ReviewResponse>builder()
                .message("Đánh giá sản phẩm thành công")
                .result(reviewService.createReview(request))
                .build();
    }
}
