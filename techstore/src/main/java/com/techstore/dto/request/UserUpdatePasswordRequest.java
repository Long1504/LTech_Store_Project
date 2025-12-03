package com.techstore.dto.request;

import lombok.Data;

import java.time.LocalDate;
import java.util.Set;

@Data
public class UserUpdatePasswordRequest {
    private String currentPassword;
    private String newPassword;
}
