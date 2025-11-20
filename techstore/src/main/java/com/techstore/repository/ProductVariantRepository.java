package com.techstore.repository;

import com.techstore.entity.ProductVariant;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ProductVariantRepository extends JpaRepository<ProductVariant, String> {
    Optional<ProductVariant> findByProduct_ProductIdAndIsDefaultTrue(String productId);
}
