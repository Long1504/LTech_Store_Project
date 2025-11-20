package com.techstore.dto.response;

import lombok.Data;
import java.time.LocalDate;

@Data
public class DiscountResponse {
    private String discountId;
    private String code;
    private String description;
    private Integer discountPercent;
    private Double minOrderAmount;
    private Double maxDiscountAmount;
    private Integer quantity;
    private LocalDate startDate;
    private LocalDate endDate;
    private Boolean isActive;
}
