package com.techstore.dto.request;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ChatRequest {
    private String message;
}
