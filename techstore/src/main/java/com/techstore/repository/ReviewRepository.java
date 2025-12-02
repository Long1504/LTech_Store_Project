package com.techstore.repository;

import com.techstore.dto.response.ReviewResponse;
import com.techstore.entity.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, String> {
    List<Review> findAllByUser_UserIdOrderByCreatedAtDesc(String userId);
}
