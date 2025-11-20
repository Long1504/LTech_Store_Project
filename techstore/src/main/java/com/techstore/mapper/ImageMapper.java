package com.techstore.mapper;

import com.techstore.dto.response.ImageResponse;
import com.techstore.entity.Image;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface ImageMapper {
    ImageResponse toImageResponse(Image image);
}