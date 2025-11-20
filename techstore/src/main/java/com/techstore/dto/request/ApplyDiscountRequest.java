package com.techstore.dto.request;

import lombok.Builder;
import lombok.Data;
import java.math.BigDecimal;

@Data
@Builder
public class ApplyDiscountRequest {
    private String discountCode;
    private BigDecimal cartTotal;
}
