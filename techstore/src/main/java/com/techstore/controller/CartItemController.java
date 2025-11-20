package com.techstore.controller;

import com.techstore.dto.request.CartItemRequest;
import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.CartItemResponse;
import com.techstore.service.CartItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/cart-item")
@RequiredArgsConstructor
public class CartItemController {
    private final CartItemService cartItemService;

    @PostMapping()
    public ApiResponse<CartItemResponse> addCartItemToCart(@RequestBody CartItemRequest request) {
        return ApiResponse.<CartItemResponse>builder()
                .message("Thêm vào giỏ hàng thành công")
                .result(cartItemService.addCartItemToCart(request))
                .build();
    }

    @PutMapping("/{cartItemId}")
    public ApiResponse<CartItemResponse> updateCartItemQuantity(@PathVariable String cartItemId, @RequestParam int quantity) {
        return ApiResponse.<CartItemResponse>builder()
                .result(cartItemService.updateCartItemQuantity(cartItemId, quantity))
                .build();
    }

    @DeleteMapping("/{cartItemId}")
    public ApiResponse<Void> deleteCartItem(@PathVariable String cartItemId) {
        cartItemService.deleteCartItem(cartItemId);
        return ApiResponse.<Void>builder()
                .message("Xóa thành công")
                .build();
    }
}
