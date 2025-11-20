package com.techstore.mapper;

import com.techstore.dto.response.PaymentResponse;
import com.techstore.entity.Payment;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface PaymentMapper {

    PaymentResponse toPaymentResponse(Payment payment);
}
