package com.techstore.mapper;

import com.techstore.dto.request.UserRequest;
import com.techstore.dto.response.UserResponse;
import com.techstore.entity.Role;
import com.techstore.entity.User;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.Named;

import java.util.Set;
import java.util.stream.Collectors;

@Mapper(componentModel = "spring")
public interface UserMapper {
    @Mapping(target = "roles", ignore = true)
    User toUser (UserRequest userRequest);

    @Mapping(target = "roles", source = "roles", qualifiedByName = "mapRolesToStrings")
    UserResponse toUserResponse(User user);
    @Named("mapRolesToStrings")
    default Set<String> mapRolesToStrings(Set<Role> roles) {
        if(roles == null)
            return null;
        return roles.stream()
                .map(role -> role.getRoleName())
                .collect(Collectors.toSet());
    }

    @Mapping(target = "roles", ignore = true)
    void updateUser(@MappingTarget User user, UserRequest userRequest);
}
