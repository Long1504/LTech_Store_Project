package com.techstore.service;

import com.techstore.dto.request.DiscountRequest;
import com.techstore.dto.response.ApplyDiscountResponse;
import com.techstore.dto.response.DiscountResponse;
import com.techstore.entity.Discount;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.mapper.DiscountMapper;
import com.techstore.repository.DiscountRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

@Service
@RequiredArgsConstructor
public class DiscountService {
    private final DiscountRepository discountRepository;

    private final DiscountMapper discountMapper;

    public DiscountResponse createDiscount(DiscountRequest discountRequest) {
        if(discountRepository.existsByCode(discountRequest.getCode())) {
            throw new AppException(ErrorCode.DISCOUNT_CODE_EXISTED);
        }

        if (discountRequest.getStartDate().isAfter(discountRequest.getEndDate())
                || discountRequest.getStartDate().isEqual(discountRequest.getEndDate())) {
            throw new AppException(ErrorCode.DISCOUNT_DATE_INVALID);
        }

        Discount discount = discountMapper.toDiscount(discountRequest);
        discount = discountRepository.save(discount);
        return discountMapper.toDiscountResponse(discount);
    }

    public List<DiscountResponse> getAllDiscounts() {
        return discountRepository.findAllByOrderByEndDateDesc()
                .stream()
                .map(discount -> discountMapper.toDiscountResponse(discount))
                .toList();
    }

    public List<DiscountResponse> getAllDiscountsForCustomer() {
        LocalDate today = LocalDate.now();

        List<Discount> discounts = discountRepository.findAll();

        return discounts.stream()
                .filter(discount -> Boolean.TRUE.equals(discount.getIsActive()))
                .filter(discount -> !today.isBefore(discount.getStartDate()))
                .filter(discount -> !today.isAfter(discount.getEndDate()))
                .map(discountMapper::toDiscountResponse)
                .toList();
    }

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

    public DiscountResponse updateDiscountStatus(String discountId) {
        Discount discount = discountRepository.findById(discountId)
                .orElseThrow(() -> new AppException(ErrorCode.DISCOUNT_NOT_EXISTED));

        discount.setIsActive(!discount.getIsActive());

        discountRepository.save(discount);
        return discountMapper.toDiscountResponse(discount);
    }

    @Transactional
    public DiscountResponse updateDiscount(String discountId, DiscountRequest discountRequest) {
        Discount discount = discountRepository.findById(discountId)
                .orElseThrow(() -> new AppException(ErrorCode.DISCOUNT_NOT_EXISTED));

        if (!discount.getCode().equals(discountRequest.getCode()) &&
                discountRepository.existsByCode(discountRequest.getCode())) {
            throw new AppException(ErrorCode.DISCOUNT_CODE_EXISTED);
        }

        if (discountRequest.getStartDate().isAfter(discountRequest.getEndDate())
                || discountRequest.getStartDate().isEqual(discountRequest.getEndDate())) {
            throw new AppException(ErrorCode.DISCOUNT_DATE_INVALID);
        }

        discount.setCode(discountRequest.getCode());
        discount.setDescription(discountRequest.getDescription());
        discount.setDiscountPercent(discountRequest.getDiscountPercent());
        discount.setMinOrderAmount(discountRequest.getMinOrderAmount());
        discount.setMaxDiscountAmount(discountRequest.getMaxDiscountAmount());
        discount.setQuantity(discountRequest.getQuantity());
        discount.setStartDate(discountRequest.getStartDate());
        discount.setEndDate(discountRequest.getEndDate());
        discount.setIsActive(discountRequest.getIsActive());

        discount = discountRepository.save(discount);
        return discountMapper.toDiscountResponse(discount);
    }

    @Transactional
    public void deleteDiscount(String discountId) {
        Discount discount = discountRepository.findById(discountId)
                .orElseThrow(() -> new AppException(ErrorCode.DISCOUNT_NOT_EXISTED));

        discountRepository.delete(discount);
    }

}
