package com.techstore.controller;

import com.techstore.dto.request.ReviewRequest;
import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.ReviewResponse;
import com.techstore.service.ReviewService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/reviews")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class ReviewController {
    private final ReviewService reviewService;

    @PostMapping()
    public ApiResponse<ReviewResponse> createReview(@RequestBody ReviewRequest request) {
        return ApiResponse.<ReviewResponse>builder()
                .message("Đánh giá sản phẩm thành công")
                .result(reviewService.createReview(request))
                .build();
    }

    @GetMapping("/my-reviews")
    public ApiResponse<List<ReviewResponse>> getMyReviews() {
        return ApiResponse.<List<ReviewResponse>>builder()
                .result(reviewService.getAllReviewsByUser())
                .build();
    }

    @PutMapping("/{reviewId}")
    public ApiResponse<ReviewResponse> updateReview(
            @PathVariable String reviewId,
            @RequestBody ReviewRequest request
    ) {
        return ApiResponse.<ReviewResponse>builder()
                .message("Cập nhật đánh giá thành công")
                .result(reviewService.updateReview(reviewId, request))
                .build();
    }

    @DeleteMapping("/{reviewId}")
    public ApiResponse<Void> deleteReview(@PathVariable String reviewId) {
        reviewService.deleteReview(reviewId);
        return ApiResponse.<Void>builder()
                .message("Xóa đánh giá thành công")
                .build();
    }
}
