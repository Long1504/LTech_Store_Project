package com.techstore.repository;

import com.techstore.dto.response.ProductOverviewResponse;
import com.techstore.entity.Product;
import org.springframework.data.domain.Pageable;
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
            i.imageUrl,
            COALESCE(AVG(r.rating), 0),
            COUNT(r.reviewId)
        )
        FROM Product p
        JOIN p.category c
        JOIN p.brand b
        LEFT JOIN p.productVariants pv ON pv.isDefault = true
        LEFT JOIN p.images i ON i.isMain = true
        LEFT JOIN p.reviews r
        WHERE (:categoryName IS NULL OR LOWER(c.categoryName) = LOWER(:categoryName))
          AND (:brandName IS NULL OR LOWER(b.brandName) = LOWER(:brandName))
        GROUP BY
            p.productId, p.productName, c.categoryName, b.brandName,
            pv.originalPrice, pv.promotionalPrice, i.imageUrl
    """)
    List<ProductOverviewResponse> findAllProductOverviews(String categoryName, String brandName);

    @Query("""
        SELECT new com.techstore.dto.response.ProductOverviewResponse(
            p.productId,
            p.productName,
            c.categoryName,
            b.brandName,
            (SELECT pv.originalPrice FROM ProductVariant pv WHERE pv.product = p AND pv.isDefault = TRUE),
            (SELECT pv.promotionalPrice FROM ProductVariant pv WHERE pv.product = p AND pv.isDefault = TRUE),
            (SELECT i.imageUrl FROM Image i WHERE i.product = p AND i.isMain = TRUE),
            COALESCE((SELECT AVG(r.rating) FROM Review r WHERE r.product = p), 0),
            (SELECT COUNT(r.reviewId) FROM Review r WHERE r.product = p)
        )
        FROM Product p
        JOIN p.category c
        JOIN p.brand b
        ORDER BY p.createdAt DESC
    """)
    List<ProductOverviewResponse> findTop4LatestProductOverviews(Pageable pageable);

    @Query("""
        SELECT new com.techstore.dto.response.ProductOverviewResponse(
            p.productId,
            p.productName,
            c.categoryName,
            b.brandName,
            (SELECT pv.originalPrice FROM ProductVariant pv WHERE pv.product = p AND pv.isDefault = TRUE),
            (SELECT pv.promotionalPrice FROM ProductVariant pv WHERE pv.product = p AND pv.isDefault = TRUE),
            (SELECT i.imageUrl FROM Image i WHERE i.product = p AND i.isMain = TRUE),
            COALESCE((SELECT AVG(r.rating) FROM Review r WHERE r.product = p), 0),
            (SELECT COUNT(r.reviewId) FROM Review r WHERE r.product = p)
        )
        FROM Product p
        JOIN p.category c
        JOIN p.brand b
        WHERE (:keyword IS NULL OR
               LOWER(p.productName) LIKE LOWER(CONCAT('%', :keyword, '%')) OR
               LOWER(c.categoryName) LIKE LOWER(CONCAT('%', :keyword, '%')) OR
               LOWER(b.brandName) LIKE LOWER(CONCAT('%', :keyword, '%')))
    """)
    List<ProductOverviewResponse> searchProductsByKeyword(String keyword);

    @Query("SELECT p FROM Product p " +
            "WHERE " +
            "(:categoryId IS NULL OR p.category.categoryId = :categoryId) AND " +
            "(:brandId IS NULL OR p.brand.brandId = :brandId)")
    List<Product> findAllByCategoryIdAndBrandId(@Param("categoryId") String categoryId, @Param("brandId") String brandId);

}
