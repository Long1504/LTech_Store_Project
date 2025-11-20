package com.techstore.controller;

import com.techstore.dto.request.OrderRequest;
import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.OrderResponse;
import com.techstore.service.OrderService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/orders")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class OrderController {
    private final OrderService orderService;

    @PostMapping()
    public ApiResponse<OrderResponse> createOrder(@RequestBody OrderRequest request) {
        return ApiResponse.<OrderResponse>builder()
                .message("Tạo đơn hàng thành công")
                .result(orderService.createOrder(request))
                .build();
    }

    @GetMapping("/{orderId}")
    public ApiResponse<OrderResponse> getOrderById(@PathVariable String orderId) {
        return ApiResponse.<OrderResponse>builder()
                .result(orderService.getOrderByOrderId(orderId))
                .build();
    }
}
