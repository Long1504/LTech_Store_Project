package com.techstore.controller;

import com.techstore.dto.request.ProductVariantCreateRequest;
import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.ProductVariantResponse;
import com.techstore.service.ProductVariantService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

@Slf4j
@RestController
@RequestMapping("/api/product-variants")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class ProductVariantController {
    private final ProductVariantService productVariantService;

    @PostMapping
    public ApiResponse<ProductVariantResponse> createProductVariant(@RequestBody ProductVariantCreateRequest request) {
        return ApiResponse.<ProductVariantResponse>builder()
                .message("Tạo biến thể sản phẩm thành công")
                .result(productVariantService.createProductVariant(request))
                .build();
    }
}
