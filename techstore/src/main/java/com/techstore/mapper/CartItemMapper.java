package com.techstore.mapper;

import com.techstore.dto.request.CartItemRequest;
import com.techstore.dto.response.CartItemResponse;
import com.techstore.entity.CartItem;
import com.techstore.entity.Image;
import com.techstore.entity.Product;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface CartItemMapper {
    CartItem toCartItem(CartItemRequest cartItemRequest);

    @Mapping(source = "productVariant.productVariantId", target = "productVariantId")
    @Mapping(source = "productVariant.product.productName", target = "productName")
    @Mapping(source = "productVariant.color", target = "color")
    @Mapping(source = "productVariant.originalPrice", target = "originalPrice")
    @Mapping(source = "productVariant.promotionalPrice", target = "promotionalPrice")
    @Mapping(expression = "java(cartItem.getProductVariant().getPromotionalPrice().multiply(java.math.BigDecimal.valueOf(cartItem.getQuantity())))", target = "subTotal")
    @Mapping(expression = "java(getMainImageUrl(cartItem))", target = "productImageUrl")
    CartItemResponse toCartItemResponse(CartItem cartItem);

    default String getMainImageUrl(CartItem cartItem) {
        return cartItem.getProductVariant().getProduct().getImages().stream()
                .filter(Image::getIsMain)
                .findFirst()
                .map(Image::getImageUrl)
                .orElse(null);
    }
}
