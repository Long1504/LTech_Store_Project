package com.techstore.mapper;

import com.techstore.dto.response.OrderItemResponse;
import com.techstore.entity.Image;
import com.techstore.entity.OrderItem;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface OrderItemMapper {
    @Mapping(source = "productVariant.productVariantId", target = "productVariantId")
    @Mapping(source = "productVariant.product.productId", target = "productId")
    @Mapping(source = "productVariant.product.productName", target = "productName")
    @Mapping(source = "productVariant.color", target = "color")
    @Mapping(expression = "java(orderItem.getPrice().multiply(java.math.BigDecimal.valueOf(orderItem.getQuantity())))", target = "subTotal")
    @Mapping(expression = "java(getMainImageUrl(orderItem))", target = "productImageUrl")
    OrderItemResponse toOrderItemResponse(OrderItem orderItem);

    default String getMainImageUrl(OrderItem orderItem) {
        return orderItem.getProductVariant().getProduct().getImages().stream()
                .filter(Image::getIsMain)
                .findFirst()
                .map(Image::getImageUrl)
                .orElse(null);
    }
}
