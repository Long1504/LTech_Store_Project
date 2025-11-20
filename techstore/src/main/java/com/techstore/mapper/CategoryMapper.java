package com.techstore.mapper;

import com.techstore.dto.request.BrandRequest;
import com.techstore.dto.request.CategoryRequest;
import com.techstore.dto.response.BrandResponse;
import com.techstore.dto.response.CategoryResponse;
import com.techstore.entity.Brand;
import com.techstore.entity.Category;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface CategoryMapper {
    Category toCategory(CategoryRequest categoryRequest);

    CategoryResponse toCategoryResponse(Category category);
}
