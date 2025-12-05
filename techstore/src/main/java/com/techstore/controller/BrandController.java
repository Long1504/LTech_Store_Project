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

    @PostMapping()
    public ApiResponse<BrandResponse> createBrand(@RequestBody BrandRequest request) {
        return ApiResponse.<BrandResponse>builder()
                .message("Tạo mới thương hiệu thành công")
                .result(brandService.createBrand(request))
                .build();
    }

    @GetMapping()
    public ApiResponse<List<BrandResponse>> getAllBrands() {
        return ApiResponse.<List<BrandResponse>>builder()
                .result(brandService.getAllBrands())
                .build();
    }

    @PutMapping("/{brandId}")
    public ApiResponse<BrandResponse> updateBrand(@PathVariable String brandId, @RequestBody BrandRequest request) {
        return ApiResponse.<BrandResponse>builder()
                .message("Cập nhật thương hiệu thành công")
                .result(brandService.updateBrand(brandId, request))
                .build();
    }

    @DeleteMapping("/{brandId}")
    public ApiResponse<BrandResponse> deleteBrand(@PathVariable String brandId) {
        brandService.deleteBrand(brandId);
        return ApiResponse.<BrandResponse>builder()
                .message("Xóa thương hiệu thành công")
                .build();
    }
}
