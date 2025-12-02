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

@Service
@RequiredArgsConstructor
public class ReviewService {
    private final ReviewRepository reviewRepository;
    private final ProductRepository productRepository;
    private final UserRepository userRepository;

    private final ReviewMapper reviewMapper;

    public ReviewResponse createReview(ReviewRequest reviewRequest) {
        Review review = reviewMapper.toReview(reviewRequest);

        Product product = productRepository.findById(reviewRequest.getProductId())
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_NOT_FOUND));

        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_NOT_FOUND.USER_NOT_EXISTED));

        review.setProduct(product);
        review.setUser(user);

        review = reviewRepository.save(review);

        return reviewMapper.toReviewResponse(review);
    }
}
