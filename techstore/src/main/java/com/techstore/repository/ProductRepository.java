package com.techstore.repository;

import com.techstore.dto.response.ProductOverviewResponse;
import com.techstore.dto.response.ProductResponse;
import com.techstore.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, String> {



    @Query("""
        SELECT new com.techstore.dto.response.ProductOverviewResponse(
            p.productId,
            p.productName,
            c.categoryName,
            b.brandName,
            pv.originalPrice,
            pv.promotionalPrice,
            i.imageUrl
        )
        FROM Product p
        JOIN p.category c
        JOIN p.brand b
        LEFT JOIN p.productVariants pv ON pv.isDefault = true
        LEFT JOIN p.images i ON i.isMain = true
        WHERE (:categoryName IS NULL OR LOWER(c.categoryName) = LOWER(:categoryName))
          AND (:brandName IS NULL OR LOWER(b.brandName) = LOWER(:brandName))
    """)
    List<ProductOverviewResponse> findAllProductOverviews(String categoryName, String brandName);

    @Query("SELECT p FROM Product p " +
            "WHERE " +
            "(:categoryId IS NULL OR p.category.categoryId = :categoryId) AND " +
            "(:brandId IS NULL OR p.brand.brandId = :brandId)")
    List<Product> findAllByCategoryIdAndBrandId(@Param("categoryId") String categoryId, @Param("brandId") String brandId);

}
