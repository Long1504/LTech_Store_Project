package com.techstore.config;

import com.techstore.entity.Role;
import com.techstore.entity.User;
import com.techstore.enums.RoleName;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.repository.RoleRepository;
import com.techstore.repository.UserRepository;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.HashSet;
import java.util.Set;

@RequiredArgsConstructor
@Slf4j
@Configuration
public class ApplicationInitConfig {
//    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final PasswordEncoder passwordEncoder;

    //Hàm này run mỗi khi start application
    @Bean
    ApplicationRunner applicationRunner(UserRepository userRepository) {
        return args -> {
            //Tạo role mặc định nếu chưa có
            if(roleRepository.count() == 0) {
                roleRepository.save(Role.builder().roleName(RoleName.ADMIN.name()).build());
                roleRepository.save(Role.builder().roleName(RoleName.STAFF.name()).build());
                roleRepository.save(Role.builder().roleName(RoleName.CUSTOMER.name()).build());
            }

            //Tạo ADMIN nếu chưa có
            if(userRepository.findByUsername("admin").isEmpty()) {
                Set<Role> roles = new HashSet<>();
                Role role = roleRepository.findByRoleName(RoleName.ADMIN.name())
                        .orElseThrow(() -> new AppException(ErrorCode.ROLE_NOT_EXISTED));
                roles.add(role);

                User user = User.builder()
                        .username("admin")
                        .password(passwordEncoder.encode("123456789"))
                        .email("")
                        .phoneNumber("")
                        .firstname("")
                        .lastname("")
                        .roles(roles)
                        .build();

                userRepository.save(user);
                log.warn("Tài khoản admin đã được tạo với mật khẩu mặc định là: 123456789. Vui lòng thay đổi!");
            }
        };
    }
}
