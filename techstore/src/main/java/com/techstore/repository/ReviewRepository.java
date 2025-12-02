package com.techstore.repository;

import com.techstore.dto.response.ReviewResponse;
import com.techstore.entity.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, String> {
//    @Query("""
//        SELECT new com.example.dto.ReviewResponseDTO(
//            r.reviewId,
//            i.imageUrl,
//            CONCAT(u.firstname, ' ', u.lastname),
//            r.rating,
//            r.comment,
//            r.createdAt
//        )
//        FROM Review r
//        JOIN r.product p
//        JOIN Image i ON i.product = p AND i.isMain = TRUE
//        JOIN User u ON u.userId = r.user.userId
//        """)
//    List<ReviewResponse> findAllReviewDetails();
}
