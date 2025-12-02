package com.techstore.mapper;

import com.techstore.dto.request.ReviewRequest;
import com.techstore.dto.response.ReviewResponse;
import com.techstore.entity.Image;
import com.techstore.entity.Product;
import com.techstore.entity.Review;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper(componentModel = "spring")
public interface ReviewMapper {

    @Mapping(target = "product", ignore = true)
    Review toReview(ReviewRequest reviewRequest);

    @Mapping(target = "productImageUrl", expression = "java(getMainImageUrl(review.getProduct()))")
    @Mapping(target = "userFullName", expression = "java(review.getUser().getFirstname() + \" \" + review.getUser().getLastname())")
    ReviewResponse toReviewResponse(Review review);

    List<ReviewResponse> toReviewResponseList(List<Review> reviews);

    default String getMainImageUrl(Product product) {
        if(product == null || product.getImages() == null) return null;
        return product.getImages().stream()
                .filter(Image::getIsMain)
                .map(Image::getImageUrl)
                .findFirst()
                .orElse(null);
    }
}