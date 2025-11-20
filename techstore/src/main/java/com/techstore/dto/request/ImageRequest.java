package com.techstore.dto.request;

import lombok.Data;

@Data
public class ImageRequest {
    private String imageUrl;
    private Boolean isMain;
}
