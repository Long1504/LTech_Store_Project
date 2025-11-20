package com.techstore.dto.request;

import com.techstore.enums.Gender;
import lombok.Data;
import java.time.LocalDate;
import java.util.Set;

@Data
public class UserRequest {
    private String username;
    private String email;
    private String password;
    private String firstname;
    private String lastname;
    private String phoneNumber;
    private Gender gender;
    private LocalDate dateOfBirth;
    private Set<String> roles;
}
