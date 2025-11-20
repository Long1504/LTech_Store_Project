package com.techstore.dto.request;

import lombok.Data;

@Data
public class AddressRequest {
    private String addressType;
    private String recipientName;
    private String recipientPhone;
    private String city;
    private String district;
    private String ward;
    private String detailAddress;
    private Boolean isDefault;
}
