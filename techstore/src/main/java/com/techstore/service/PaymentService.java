package com.techstore.service;

import com.techstore.dto.response.PaymentResponse;
import com.techstore.entity.Payment;
import com.techstore.enums.PaymentStatus;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.mapper.PaymentMapper;
import com.techstore.repository.PaymentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
@RequiredArgsConstructor
public class PaymentService {
    private final PaymentRepository paymentRepository;
    private final PaymentMapper paymentMapper;

    public PaymentResponse changePaymentStatus(String paymentId, String paymentStatus) {
        Payment payment = paymentRepository.findById(paymentId)
                .orElseThrow(() -> new AppException(ErrorCode.PAYMENT_NOT_EXISTED));

        payment.setPaymentStatus(paymentStatus);

        if(paymentStatus.equals(PaymentStatus.PAID.name()))
            payment.setPaidAt(LocalDateTime.now());

        payment = paymentRepository.save(payment);
        return paymentMapper.toPaymentResponse(payment);
    }
}
