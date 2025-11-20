package com.techstore.service;

import com.techstore.dto.request.BrandRequest;
import com.techstore.dto.request.CategoryRequest;
import com.techstore.dto.response.BrandResponse;
import com.techstore.dto.response.CategoryResponse;
import com.techstore.entity.Brand;
import com.techstore.entity.Category;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.mapper.CategoryMapper;
import com.techstore.repository.CategoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CategoryService {
    private final CategoryRepository categoryRepository;
    private final CategoryMapper categoryMapper;

    public CategoryResponse createCategory(CategoryRequest request) {
        if(categoryRepository.existsByCategoryName(request.getCategoryName()))
            throw new AppException(ErrorCode.CATEGORY_EXISTED);
        Category category = categoryMapper.toCategory(request);
        category = categoryRepository.save(category);
        return categoryMapper.toCategoryResponse(category);
    }

    public List<CategoryResponse> getAllCategories() {
        return categoryRepository.findAll()
                .stream()
                .map(category -> categoryMapper.toCategoryResponse(category))
                .toList();
    }
}
