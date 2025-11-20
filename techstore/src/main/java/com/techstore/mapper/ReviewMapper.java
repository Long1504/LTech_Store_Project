package com.techstore.mapper;

import com.techstore.dto.response.ReviewResponse;
import com.techstore.entity.Review;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface ReviewMapper {
    ReviewResponse toReviewResponse(Review review);
}