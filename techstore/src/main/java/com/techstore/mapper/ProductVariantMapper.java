package com.techstore.mapper;

import com.techstore.dto.request.ProductVariantCreateRequest;
import com.techstore.dto.response.ProductVariantResponse;
import com.techstore.entity.ProductVariant;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface ProductVariantMapper {
    @Mapping(target = "productSpecs", ignore = true)
    ProductVariant toProductVariant(ProductVariantCreateRequest productVariantCreateRequest);

    ProductVariantResponse toProductVariantResponse(ProductVariant variant);
}