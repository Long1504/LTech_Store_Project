package com.techstore.service;

import com.techstore.dto.response.CartItemResponse;
import com.techstore.dto.response.CartResponse;
import com.techstore.entity.Cart;
import com.techstore.entity.CartItem;
import com.techstore.entity.User;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.mapper.CartItemMapper;
import com.techstore.mapper.CartMapper;
import com.techstore.repository.CartItemRepository;
import com.techstore.repository.CartRepository;
import com.techstore.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class CartService {
    private final CartRepository cartRepository;
    private final UserRepository userRepository;
    private final CartItemRepository cartItemRepository;

    private final CartMapper cartMapper;
    private final CartItemMapper cartItemMapper;

    public CartResponse getCartDetail() {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        String userId = user.getUserId();

        Cart cart = cartRepository.findByUser_UserId(userId)
                .orElseThrow(() -> new AppException(ErrorCode.CART_NOT_EXISTED));

        CartResponse cartResponse = cartMapper.toCartResponse(cart);
        List<CartItemResponse> cartItems = cart.getCartItems().stream()
                .map(cartItem -> cartItemMapper.toCartItemResponse(cartItem))
                .toList();

        cartResponse.setCartItems(cartItems);

        BigDecimal total = BigDecimal.ZERO;
        for(CartItemResponse cartItem : cartResponse.getCartItems()) {
            total = total.add(cartItem.getSubTotal());
        }

        cartResponse.setTotal(total);

        return cartResponse;
    }

    public int getCartItemCount() {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        if (username == null || username.equals("anonymousUser"))
            return 0;

        User user = userRepository.findByUsername(username).orElse(null);
        if(user == null)
            return 0;

        Cart cart = cartRepository.findByUser_UserId(user.getUserId()).orElse(null);
        if(cart == null)
            return 0;

        return cart.getCartItems().size();
    }

    public void clearCart() {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        Cart cart = cartRepository.findByUser_UserId(user.getUserId())
                .orElseThrow(() -> new AppException(ErrorCode.CART_NOT_EXISTED));

        for(CartItem cartItem : new ArrayList<>(cart.getCartItems())) {
            cartItem.setCart(null);
        }
        cart.getCartItems().clear();
    }
}
