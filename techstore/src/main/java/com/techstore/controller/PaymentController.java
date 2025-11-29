package com.techstore.controller;

import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.PaymentResponse;
import com.techstore.service.PaymentService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/payments")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class PaymentController {
    private final PaymentService paymentService;

    @PutMapping("/{paymentId}")
    public ApiResponse<PaymentResponse> changePaymentStatus(
            @PathVariable String paymentId,
            @RequestParam String paymentStatus
    ) {
        return ApiResponse.<PaymentResponse>builder()
                .message("Đã cập nhật trạng thái thanh toán")
                .result(paymentService.changePaymentStatus(paymentId, paymentStatus))
                .build();
    }
}
