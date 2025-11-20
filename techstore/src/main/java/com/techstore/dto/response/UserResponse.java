package com.techstore.dto.response;

import com.techstore.entity.Role;
import com.techstore.enums.Gender;
import com.techstore.enums.UserStatus;
import lombok.Data;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Set;

@Data
public class UserResponse {
    private String userId;
    private String username;
    private String email;
//    private String password;
    private String firstname;
    private String lastname;
    private String phoneNumber;
    private String gender;
    private LocalDate dateOfBirth;
    private String userStatus;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private Set<String> roles;
}
