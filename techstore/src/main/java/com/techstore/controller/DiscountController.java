package com.techstore.controller;

import com.techstore.dto.request.ApplyDiscountRequest;
import com.techstore.dto.request.DiscountRequest;
import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.ApplyDiscountResponse;
import com.techstore.dto.response.DiscountResponse;
import com.techstore.service.DiscountService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@RestController
@RequestMapping("/api/discounts")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class DiscountController {
    private final DiscountService discountService;

    @PostMapping()
    public ApiResponse<DiscountResponse> createDiscount(@RequestBody DiscountRequest request) {
        return ApiResponse.<DiscountResponse>builder()
                .message("Tạo mã giảm giá thành công")
                .result(discountService.createDiscount(request))
                .build();
    }

    @GetMapping()
    public ApiResponse<List<DiscountResponse>> getAllDiscounts() {
        return ApiResponse.<List<DiscountResponse>>builder()
                .result(discountService.getAllDiscounts())
                .build();
    }

    @GetMapping("/customer")
    public ApiResponse<List<DiscountResponse>> getAllDiscountsForCustomer() {
        return ApiResponse.<List<DiscountResponse>>builder()
                .result(discountService.getAllDiscountsForCustomer())
                .build();
    }

    @PostMapping("/apply")
    public ApiResponse<ApplyDiscountResponse> applyDiscount(@RequestBody ApplyDiscountRequest request) {
        return ApiResponse.<ApplyDiscountResponse>builder()
                .message("Áp mã thành công")
                .result(discountService.applyDiscount(request.getDiscountCode(), request.getCartTotal()))
                .build();
    }

    @PutMapping("/{discountId}/status")
    public ApiResponse<DiscountResponse> updateDiscountStatus(@PathVariable String discountId) {
        return ApiResponse.<DiscountResponse>builder()
                .message("Cập nhật trạng thái mã giảm giá thành công")
                .result(discountService.updateDiscountStatus(discountId))
                .build();
    }

    @PutMapping("/{discountId}")
    public ApiResponse<DiscountResponse> updateDiscount(
            @PathVariable String discountId,
            @RequestBody DiscountRequest request
    ) {
        return ApiResponse.<DiscountResponse>builder()
                .message("Cập nhật mã giảm giá thành công")
                .result(discountService.updateDiscount(discountId, request))
                .build();
    }

    @DeleteMapping("/{discountId}")
    public ApiResponse<Void> deleteDiscount(@PathVariable String discountId) {
        discountService.deleteDiscount(discountId);
        return ApiResponse.<Void>builder()
                .message("Xóa mã giảm giá thành công")
                .build();
    }
}
