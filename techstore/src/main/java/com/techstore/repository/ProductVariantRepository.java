package com.techstore.repository;

import com.techstore.dto.response.BestSellingProductResponse;
import com.techstore.entity.ProductVariant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface ProductVariantRepository extends JpaRepository<ProductVariant, String> {
    Optional<ProductVariant> findByProduct_ProductIdAndIsDefaultTrue(String productId);

    @Query("SELECT COALESCE(SUM(pv.stock), 0) FROM ProductVariant pv")
    Integer getTotalStock();

    @Query(value = """
        SELECT 
            MAX(img.image_url) AS image_url,
            p.product_name, 
            pv.color, 
            pv.original_price, 
            pv.promotional_price,
            SUM(oi.quantity) AS sold_quantity,
            SUM(oi.quantity * oi.price) AS revenue
        FROM product_variant pv
        JOIN product p ON pv.product_id = p.product_id
        LEFT JOIN image img ON img.product_id = p.product_id AND img.is_main = true
        JOIN order_item oi ON oi.product_variant_id = pv.product_variant_id
        JOIN orders o ON o.order_id = oi.order_id
        WHERE o.order_status = 'COMPLETED'
          AND (:startDate IS NULL OR o.created_at >= :startDate)
          AND (:endDate IS NULL OR o.created_at <= :endDate)
        GROUP BY pv.product_variant_id, p.product_name, pv.color, pv.original_price, pv.promotional_price
        ORDER BY sold_quantity DESC
        LIMIT :limit
    """, nativeQuery = true)
    List<Object[]> findBestSellingProductsByPeriod(
            @Param("startDate") java.sql.Timestamp startDate,
            @Param("endDate") java.sql.Timestamp endDate,
            @Param("limit") int limit
    );


}
