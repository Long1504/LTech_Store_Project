package com.techstore.repository;

import com.techstore.entity.Brand;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BrandRepository extends JpaRepository<Brand, String> {
    boolean existsByBrandName(String brandName);
}
