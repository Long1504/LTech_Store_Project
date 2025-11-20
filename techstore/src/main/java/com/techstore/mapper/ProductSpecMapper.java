package com.techstore.mapper;

import com.techstore.dto.request.ProductSpecRequest;
import com.techstore.entity.ProductSpec;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface ProductSpecMapper {
    ProductSpec toProductSpec(ProductSpecRequest productSpecRequest);
}
