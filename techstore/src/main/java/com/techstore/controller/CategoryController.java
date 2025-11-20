package com.techstore.controller;

import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.CategoryResponse;
import com.techstore.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/categories")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class CategoryController {
    private final CategoryService categoryService;

    @GetMapping
    public ApiResponse<List<CategoryResponse>> getAllCategories() {
        return ApiResponse.<List<CategoryResponse>>builder()
                .result(categoryService.getAllCategories())
                .build();
    }
}
