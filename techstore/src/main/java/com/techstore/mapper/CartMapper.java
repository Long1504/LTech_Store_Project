package com.techstore.mapper;

import com.techstore.dto.response.CartItemResponse;
import com.techstore.dto.response.CartResponse;
import com.techstore.entity.Cart;
import com.techstore.entity.CartItem;
import lombok.RequiredArgsConstructor;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

import java.util.List;

@Mapper(componentModel = "spring")
public interface CartMapper {

    @Mapping(target = "cartItems", ignore = true)
    CartResponse toCartResponse(Cart cart);
}
