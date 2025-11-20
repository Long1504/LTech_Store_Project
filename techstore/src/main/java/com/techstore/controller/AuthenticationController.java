package com.techstore.controller;

import com.nimbusds.jose.JOSEException;
import com.techstore.dto.request.AuthenticationRequest;
import com.techstore.dto.request.IntrospectRequest;
import com.techstore.dto.request.LogoutRequest;
import com.techstore.dto.request.RefreshRequest;
import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.AuthenticationResponse;
import com.techstore.dto.response.IntrospectResponse;
import com.techstore.service.AuthenticationService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;

@RestController
@RequestMapping("/api/auth")
@RequiredArgsConstructor
@CrossOrigin(origins = "*") //Cho phép frontend gọi từ mọi domain
public class AuthenticationController {
    private final AuthenticationService authenticationService;

    @PostMapping("/login")
    public ApiResponse<AuthenticationResponse> authenticate(@RequestBody AuthenticationRequest request) {
        return ApiResponse.<AuthenticationResponse>builder()
                .message("Đăng nhập thành công")
                .result(authenticationService.authenticate(request))
                .build();
    }

    @PostMapping("/introspect")
    public ApiResponse<IntrospectResponse> introspect(@RequestBody IntrospectRequest request) throws ParseException, JOSEException {
        return ApiResponse.<IntrospectResponse>builder()
                .result(authenticationService.introspect(request))
                .build();
    }

    @PostMapping("/logout")
    public ApiResponse<Void> logout(@RequestBody LogoutRequest request) throws ParseException, JOSEException {
        authenticationService.logout(request);
        return ApiResponse.<Void>builder().build();
    }

    @PostMapping("/refresh")
    public ApiResponse<AuthenticationResponse> refresh(@RequestBody RefreshRequest request) throws ParseException, JOSEException {
        return ApiResponse.<AuthenticationResponse>builder()
                .result(authenticationService.refreshToken(request))
                .build();
    }
}
