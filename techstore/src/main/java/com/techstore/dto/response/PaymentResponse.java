package com.techstore.dto.response;

import lombok.Builder;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Builder
public class PaymentResponse {
    private String paymentId;
    private String paymentMethod;
    private String paymentStatus;
    private LocalDateTime paidAt;
}
