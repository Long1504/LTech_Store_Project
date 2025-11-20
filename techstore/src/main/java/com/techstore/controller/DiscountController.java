package com.techstore.controller;

import com.techstore.dto.request.ApplyDiscountRequest;
import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.ApplyDiscountResponse;
import com.techstore.service.DiscountService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;

@RestController
@RequestMapping("/api/discounts")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class DiscountController {
    private final DiscountService discountService;

    @PostMapping("/apply")
    public ApiResponse<ApplyDiscountResponse> applyDiscount(@RequestBody ApplyDiscountRequest request) {
        return ApiResponse.<ApplyDiscountResponse>builder()
                .message("Áp mã thành công")
                .result(discountService.applyDiscount(request.getDiscountCode(), request.getCartTotal()))
                .build();
    }
}
