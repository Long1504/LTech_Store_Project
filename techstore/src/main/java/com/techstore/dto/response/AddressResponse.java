package com.techstore.dto.response;

import lombok.Data;

@Data
public class AddressResponse {
    private String addressId;
    private String addressType;
    private String recipientName;
    private String recipientPhone;
    private String city;
    private String district;
    private String ward;
    private String detailAddress;
    private Boolean isDefault;
}
