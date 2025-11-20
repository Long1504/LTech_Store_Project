package com.techstore.controller;

import com.techstore.dto.request.RoleRequest;
import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.RoleResponse;
import com.techstore.entity.Role;
import com.techstore.service.RoleService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/roles")
@RequiredArgsConstructor
@CrossOrigin(origins = "*") //Cho phép frontend gọi từ mọi domain
public class RoleController {
    private final RoleService roleService;

    @PostMapping
    public ApiResponse<RoleResponse> createRole(@RequestBody RoleRequest request) {
        return ApiResponse.<RoleResponse>builder()
                .message("Tạo thành công")
                .result(roleService.createRole(request))
                .build();
    }

    @GetMapping
    public ApiResponse<List<RoleResponse>> getAllRoles() {
        return ApiResponse.<List<RoleResponse>>builder()
                .result(roleService.getAllRoles())
                .build();
    }

    @PutMapping("/{roleId}")
    public ApiResponse<RoleResponse> updateRole(@PathVariable String roleId, @RequestBody RoleRequest request) {
        return ApiResponse.<RoleResponse>builder()
                .message("Cập nhật thành công")
                .result(roleService.updateRole(roleId, request))
                .build();
    }

    @DeleteMapping("/{roleId}")
    public ApiResponse<Void> deleteRole(@PathVariable String roleId) {
        roleService.deleteRole(roleId);
        return ApiResponse.<Void>builder()
                .message("Xóa thành công")
                .build();
    }
}
