package com.techstore.mapper;

import com.techstore.dto.request.ProductCreateRequest;
import com.techstore.dto.response.ProductResponse;
import com.techstore.entity.Product;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface ProductMapper {

    @Mapping(target = "category", ignore = true)
    @Mapping(target = "brand", ignore = true)
    Product toProduct(ProductCreateRequest productCreateRequest);

    @Mapping(target = "reviews", ignore = true)
    ProductResponse toProductResponse(Product product);

//    @Mapping(source = "category.categoryName", target = "categoryName")
//    @Mapping(source = "brand.brandName", target = "brandName")
//    @Mapping(expression = "java(getMainImageUrl(product))", target = "imageURL")
//    default String getMainImageUrl(Product product) {
//        if (product.getImages() == null) return null;
//        return product.getImages().stream()
//                .filter(image -> Boolean.TRUE.equals(image.getIsMain()))
//                .findFirst()
//                .map(image -> image.getImageUrl())
//                .orElse(null);
//    }
}
