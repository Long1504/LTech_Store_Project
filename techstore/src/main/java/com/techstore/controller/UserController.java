package com.techstore.controller;

import com.techstore.dto.request.UserRequest;
import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.UserResponse;
import com.techstore.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/api/users")
@RequiredArgsConstructor
@CrossOrigin(origins = "*") //Cho phép frontend gọi từ mọi domain
public class UserController {
    private final UserService userService;

    @PostMapping("/register")
    public ApiResponse<UserResponse> register(@RequestBody UserRequest request) {
        return ApiResponse.<UserResponse>builder()
                .message("Tạo tài khoản thành công")
                .result(userService.register(request))
                .build();
    }

    @GetMapping()
    public ApiResponse<List<UserResponse>> getAllUsers() {
        var authentication = SecurityContextHolder.getContext().getAuthentication();
        log.info("Username: {}", authentication.getName());
        authentication.getAuthorities().stream().forEach(grantedAuthority -> log.info(grantedAuthority.getAuthority()));

        return ApiResponse.<List<UserResponse>>builder()
                .result(userService.getAllUsers())
                .build();
    }

    @GetMapping("/{userId}")
    public ApiResponse<UserResponse> getUser(@PathVariable String userId) {
        return ApiResponse.<UserResponse>builder()
                .result(userService.getUser(userId))
                .build();
    }

    @DeleteMapping("/{userId}")
    public ApiResponse<Void> deleteUser(@PathVariable String userId) {
        userService.deleteUser(userId);
        return ApiResponse.<Void>builder()
                .message("Xóa thành công")
                .build();
    }

    @GetMapping("/myInfo")
    public ApiResponse<UserResponse> getMyInfo() {
        return ApiResponse.<UserResponse>builder()
                .result(userService.getMyInfo())
                .build();
    }

    @GetMapping("/customers")
    public ApiResponse<List<UserResponse>> getAllCustomers() {
        return ApiResponse.<List<UserResponse>>builder()
                .result(userService.getAllCustomers())
                .build();
    }

    @PutMapping("/my-info/info")
    public ApiResponse<UserResponse> updateMyInfo(@RequestBody UserRequest request) {
        return ApiResponse.<UserResponse>builder()
                .message("Cập nhật thông tin thành công")
                .result(userService.updateMyInfo(request))
                .build();
    }

    @PutMapping("/customers/{userId}/status")
    public ApiResponse<UserResponse> changeUserStatus(@PathVariable String userId) {
        return ApiResponse.<UserResponse>builder()
                .message("Cập nhật trạng thái thành công")
                .result(userService.changeUserStatus(userId))
                .build();
    }
}
