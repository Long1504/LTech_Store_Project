package com.techstore.controller;

import com.techstore.dto.request.ProductCreateRequest;
import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.ProductOverviewResponse;
import com.techstore.dto.response.ProductResponse;
import com.techstore.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/api/products")
@RequiredArgsConstructor
@CrossOrigin(origins = "*") //Cho phép frontend gọi từ mọi domain
public class ProductController {
    private final ProductService productService;

    @PostMapping
    public ApiResponse<ProductResponse> createProduct(@RequestBody ProductCreateRequest request) {
        return ApiResponse.<ProductResponse>builder()
                .message("Tạo mới sản phẩm thành công")
                .result(productService.createProduct(request))
                .build();
    }

    @GetMapping()
    public ApiResponse<List<ProductResponse>> getAllProducts() {
        return ApiResponse.<List<ProductResponse>>builder()
                .result(productService.getAllProducts())
                .build();
    }

    @GetMapping("/{productId}")
    public ApiResponse<ProductResponse> getProductByProductId(@PathVariable String productId) {
        return ApiResponse.<ProductResponse>builder()
                .result(productService.getProductByProductId(productId))
                .build();
    }

    @GetMapping("/phones")
    public ApiResponse<List<ProductOverviewResponse>> getAllPhoneOverviews() {
        return ApiResponse.<List<ProductOverviewResponse>>builder()
                .result(productService.getAllProductOverviews("Điện thoại", null))
                .build();
    }

    @GetMapping("/laptops")
    public ApiResponse<List<ProductOverviewResponse>> getAllLaptopOverviews() {
        return ApiResponse.<List<ProductOverviewResponse>>builder()
                .result(productService.getAllProductOverviews("Laptop", null))
                .build();
    }

    @GetMapping("/charging-adapters")
    public ApiResponse<List<ProductOverviewResponse>> getAllChargingAdapterOverviews() {
        return ApiResponse.<List<ProductOverviewResponse>>builder()
                .result(productService.getAllProductOverviews("Củ sạc", null))
                .build();
    }

    @GetMapping("/charging-cables")
    public ApiResponse<List<ProductOverviewResponse>> getAllChargingCableOverviews() {
        return ApiResponse.<List<ProductOverviewResponse>>builder()
                .result(productService.getAllProductOverviews("Cáp sạc", null))
                .build();
    }

    @GetMapping("/mouses")
    public ApiResponse<List<ProductOverviewResponse>> getAllMouseOverviews() {
        return ApiResponse.<List<ProductOverviewResponse>>builder()
                .result(productService.getAllProductOverviews("Chuột", null))
                .build();
    }

    @GetMapping("/keyboards")
    public ApiResponse<List<ProductOverviewResponse>> getAllKeyboardOverviews() {
        return ApiResponse.<List<ProductOverviewResponse>>builder()
                .result(productService.getAllProductOverviews("Bàn phím", null))
                .build();
    }

    // filter?categoryId=?&brandId=?
    @GetMapping("/filter")
    public ApiResponse<List<ProductResponse>> getProductsByCategoryAndBrand(
            @RequestParam(required = false) String categoryId,
            @RequestParam(required = false) String brandId
    ) {
        List<ProductResponse> products = productService.getAllProductsByCategoryIdAndBrandId(categoryId, brandId);
        return ApiResponse.<List<ProductResponse>>builder()
                .result(products)
                .build();
    }

    @GetMapping("/search")
    public ApiResponse<List<ProductOverviewResponse>> searchProducts(@RequestParam String keyword) {
        return ApiResponse.<List<ProductOverviewResponse>>builder()
                .result(productService.searchProductsByKeyword(keyword))
                .build();
    }

    @PutMapping("/{productId}/status")
    public ApiResponse<ProductResponse> changeProductStatus(@PathVariable String productId) {
        return ApiResponse.<ProductResponse>builder()
                .message("Cập nhật trạng thái thành công")
                .result(productService.changeProductStatus(productId))
                .build();
    }

    @DeleteMapping("/{productId}")
    public ApiResponse<Void> deleteProduct(@PathVariable String productId) {
        productService.deleteProduct(productId);
        return ApiResponse.<Void>builder()
                .message("Xóa thành công")
                .build();
    }
}
