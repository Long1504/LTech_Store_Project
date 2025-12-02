package com.techstore.service;

import com.techstore.dto.request.ReviewRequest;
import com.techstore.dto.response.ReviewResponse;
import com.techstore.entity.Product;
import com.techstore.entity.Review;
import com.techstore.entity.User;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.mapper.ReviewMapper;
import com.techstore.repository.ProductRepository;
import com.techstore.repository.ReviewRepository;
import com.techstore.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ReviewService {
    private final ReviewRepository reviewRepository;
    private final ProductRepository productRepository;
    private final UserRepository userRepository;

    private final ReviewMapper reviewMapper;

    public ReviewResponse createReview(ReviewRequest reviewRequest) {
        Review review = reviewMapper.toReview(reviewRequest);

        System.out.println("ID nhận được: " + reviewRequest.getProductId());
        Product product = productRepository.findById(reviewRequest.getProductId())
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_NOT_FOUND));

        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_NOT_FOUND));

        review.setProduct(product);
        review.setUser(user);

        review = reviewRepository.save(review);

        return reviewMapper.toReviewResponse(review);
    }

    public List<ReviewResponse> getAllReviewsByUser() {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        List<Review> reviews = reviewRepository.findAllByUser_UserIdOrderByCreatedAtDesc(user.getUserId());

        List<ReviewResponse> reviewResponses = new ArrayList<>();
        for(Review review : reviews) {
            reviewResponses.add(reviewMapper.toReviewResponse(review));
        }

        return reviewResponses;
    }

    public ReviewResponse updateReview(String reviewId, ReviewRequest reviewRequest) {
        Review review = reviewRepository.findById(reviewId)
                .orElseThrow(() -> new AppException(ErrorCode.REVIEW_NOT_EXISTED));

        review.setRating(reviewRequest.getRating());
        review.setComment(reviewRequest.getComment());

        review = reviewRepository.save(review);
        return reviewMapper.toReviewResponse(review);
    }

    public void deleteReview(String reviewId) {
        Review review = reviewRepository.findById(reviewId)
                .orElseThrow(() -> new AppException(ErrorCode.REVIEW_NOT_EXISTED));

        reviewRepository.delete(review);
    }
}
