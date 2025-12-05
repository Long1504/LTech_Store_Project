package com.techstore.dto.response;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class CustomerReportResponse {
    private int today;
    private int month;
    private int year;
}
