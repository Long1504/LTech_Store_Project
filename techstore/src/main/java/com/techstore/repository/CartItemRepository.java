package com.techstore.repository;

import com.techstore.entity.CartItem;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CartItemRepository extends JpaRepository<CartItem, String> {
    Optional<CartItem> findByCart_CartIdAndProductVariant_ProductVariantId(String cartId, String productVariantId);
}
