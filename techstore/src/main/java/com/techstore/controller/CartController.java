package com.techstore.controller;

import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.CartResponse;
import com.techstore.service.CartService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/carts")
@RequiredArgsConstructor
public class CartController {
    private final CartService cartService;

    @GetMapping()
    public ApiResponse<CartResponse> getCartDetail() {
        return ApiResponse.<CartResponse>builder()
                .result(cartService.getCartDetail())
                .build();
    }

    @DeleteMapping()
    public ApiResponse<Void> clearCart() {
        cartService.clearCart();
        return ApiResponse.<Void>builder()
                .message("Đã clear giỏ hàng")
                .build();
    }
}
