package com.techstore.dto.request;

import com.techstore.entity.CartItem;
import lombok.Data;

import java.util.Set;

@Data
public class CartRequest {
    private Integer userId;
    private Set<CartItemRequest> items;
}
