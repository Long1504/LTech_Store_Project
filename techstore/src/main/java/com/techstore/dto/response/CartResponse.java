package com.techstore.dto.response;

import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class CartResponse {
    private String cartId;
//    private String userId;
    private List<CartItemResponse> cartItems;
    private BigDecimal total;
}
