package com.techstore.dto.response;

import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;

@Data
@Builder
public class RevenueReportResponse {
    private BigDecimal today;
    private BigDecimal month;
    private BigDecimal year;
}
