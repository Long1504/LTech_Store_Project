package com.techstore.controller;

import com.techstore.dto.request.ApplyDiscountRequest;
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
}
