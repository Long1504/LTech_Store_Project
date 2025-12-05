package com.techstore.dto.response;

import lombok.Builder;
import lombok.Data;

import java.util.List;

@Data
@Builder
public class CustomerAndOrderLineChartResponse {
    private List<String> labels;
    private List<Long> orders;
    private List<Long> customers;
}
