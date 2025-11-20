package com.techstore.controller;

import com.techstore.dto.request.BrandRequest;
import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.BrandResponse;
import com.techstore.service.BrandService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/api/brands")
@RequiredArgsConstructor
@CrossOrigin(origins = "*") //Cho phép frontend gọi từ mọi domain
public class BrandController {
    private final BrandService brandService;

    @PostMapping
    public ApiResponse<BrandResponse> createBrand(@RequestBody BrandRequest request) {
        return ApiResponse.<BrandResponse>builder()
                .message("Tạo mới thương hiệu thành công!")
                .result(brandService.createBrand(request))
                .build();
    }

    @GetMapping
    public ApiResponse<List<BrandResponse>> getAllBrands() {
        return ApiResponse.<List<BrandResponse>>builder()
                .result(brandService.getAllBrands())
                .build();
    }
}
