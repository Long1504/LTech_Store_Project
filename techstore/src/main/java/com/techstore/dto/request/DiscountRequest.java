package com.techstore.dto.request;

import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDate;

@Data
public class DiscountRequest {
    private String code;
    private String description;
    private Integer discountPercent;
    private BigDecimal minOrderAmount;
    private BigDecimal maxDiscountAmount;
    private Integer quantity;
    private LocalDate startDate;
    private LocalDate endDate;
    private Boolean isActive;
}
