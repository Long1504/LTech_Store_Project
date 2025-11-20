package com.techstore.repository;

import com.techstore.entity.ProductSpec;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductSpecRepository extends JpaRepository<ProductSpec, String> {
}
