package com.techstore.service;

import com.techstore.dto.request.RoleRequest;
import com.techstore.dto.response.RoleResponse;
import com.techstore.entity.Role;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.mapper.RoleMapper;
import com.techstore.repository.RoleRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RoleService {
    private final RoleRepository roleRepository;
    private final RoleMapper roleMapper;

    public RoleResponse createRole(RoleRequest request) {
        if(roleRepository.existsByRoleName(request.getRoleName())) {
            throw new AppException(ErrorCode.ROLE_EXISTED);
        }
        Role role = roleMapper.toRole(request);
        role = roleRepository.save(role);
        return roleMapper.toRoleResponse(role);
    }

    public List<RoleResponse> getAllRoles() {
        return roleRepository.findAll()
                .stream()
                .map(role -> roleMapper.toRoleResponse(role))
                .toList();
    }

    public RoleResponse updateRole(String roleId, RoleRequest request) {
        Role role = roleRepository.findById(roleId)
                .orElseThrow(() -> new AppException(ErrorCode.ROLE_NOT_EXISTED));

        roleMapper.updateRole(role, request);

        role = roleRepository.save(role);

        return roleMapper.toRoleResponse(role);
    }

    public void deleteRole(String roleId) {
        Role role = roleRepository.findById(roleId)
                .orElseThrow(() -> new AppException(ErrorCode.ROLE_NOT_EXISTED));

        roleRepository.deleteById(roleId);
    }
}
