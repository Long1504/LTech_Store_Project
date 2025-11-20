package com.techstore.repository;

import com.techstore.entity.Review;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReviewRepository extends JpaRepository<Review, String> {
}
