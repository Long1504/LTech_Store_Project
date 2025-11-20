package com.techstore.mapper;

import com.techstore.dto.request.BrandRequest;
import com.techstore.dto.response.BrandResponse;
import com.techstore.entity.Brand;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface BrandMapper {
    Brand toBrand(BrandRequest brandRequest);

    BrandResponse toBrandResponse(Brand brand);
}
