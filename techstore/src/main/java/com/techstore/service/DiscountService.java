package com.techstore.service;

import com.techstore.dto.response.ApplyDiscountResponse;
import com.techstore.entity.Discount;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.repository.DiscountRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDate;

@Service
@RequiredArgsConstructor
public class DiscountService {
    private final DiscountRepository discountRepository;



    public ApplyDiscountResponse applyDiscount(String discountCode, BigDecimal cartTotal) {
        Discount discount = discountRepository.findByCode(discountCode)
                .orElseThrow(() -> new AppException(ErrorCode.DISCOUNT_NOT_EXISTED));

        if(!isValid(discount, cartTotal))
            throw new AppException(ErrorCode.DISCOUNT_INVALID);

        BigDecimal discountAmount = cartTotal
                .multiply(BigDecimal.valueOf(discount.getDiscountPercent()))
                .divide(BigDecimal.valueOf(100));

        if(discountAmount.compareTo(discount.getMaxDiscountAmount()) > 0)
            discountAmount = discount.getMaxDiscountAmount();

        BigDecimal finalAmount = cartTotal.subtract(discountAmount);

        return ApplyDiscountResponse.builder()
                .discountAmount(discountAmount)
                .finalAmount(finalAmount)
                .build();
    }

    private boolean isValid(Discount discount, BigDecimal cartTotal) {
        if(discount == null || !discount.getIsActive())
            return false;

        LocalDate today = LocalDate.now();
        if(today.isBefore(discount.getStartDate()) || today.isAfter(discount.getEndDate()))
            return false;

        if(discount.getQuantity() <= 0)
            return false;

        if(cartTotal.compareTo(discount.getMinOrderAmount()) < 0)
            return false;

        return true;
    }

    @Transactional
    public void decrementQuantity(Discount discount) {
        discount.setQuantity(discount.getQuantity() - 1);
        discountRepository.save(discount);
    }
}
