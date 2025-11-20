package com.techstore.service;

import com.techstore.dto.request.CartItemRequest;
import com.techstore.dto.response.CartItemResponse;
import com.techstore.entity.Cart;
import com.techstore.entity.CartItem;
import com.techstore.entity.ProductVariant;
import com.techstore.entity.User;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.mapper.CartItemMapper;
import com.techstore.mapper.CartMapper;
import com.techstore.repository.CartItemRepository;
import com.techstore.repository.CartRepository;
import com.techstore.repository.ProductVariantRepository;
import com.techstore.repository.UserRepository;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.util.HashMap;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class CartItemService {
    private final CartRepository cartRepository;
    private final CartItemRepository cartItemRepository;
    private final UserRepository userRepository;
    private final ProductVariantRepository productVariantRepository;

    private final CartItemMapper cartItemMapper;

    public CartItemResponse addCartItemToCart(CartItemRequest request) {
        String username = null;

        try {
            username = SecurityContextHolder.getContext().getAuthentication().getName();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        //Check xem login chưa
        if(username == null || username.equals("anonymousUser")) {
            //Chưa login -> Lưu vào session
            return addToTempCart(request);
        }
        else {
            //Đã login
            mergeTempCartToUserCart(username);
            return addToUserCart(request);
        }
    }

    //Thêm vào giỏ hàng của user đã login
    private CartItemResponse addToUserCart(CartItemRequest request) {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));
        String userId = user.getUserId();

        //Check nếu user chưa có cart thì tạo mới
        Cart cart = cartRepository.findByUser_UserId(userId)
                .orElseGet(() -> {
                    Cart newCart = Cart.builder()
                            .user(user)
                            .build();
                    return cartRepository.save(newCart);
                });

        ProductVariant productVariant = productVariantRepository.findById(request.getProductVariantId())
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_VARIANT_NOT_FOUNT));

        //Check nếu item chưa có trong cart thì tạo mới
        CartItem cartItem = cartItemRepository
                .findByCart_CartIdAndProductVariant_ProductVariantId(cart.getCartId(), productVariant.getProductVariantId())
                .orElseGet(() -> {
                    CartItem newCartItem = CartItem.builder()
                            .cart(cart)
                            .productVariant(productVariant)
                            .quantity(0)
                            .build();
                    return newCartItem;
                });

        //Nếu item đã có thì tăng số lượng
        int newQuantity = cartItem.getQuantity() + request.getQuantity();

        if(newQuantity > productVariant.getStock()) {
            throw new AppException(ErrorCode.OUT_OF_STOCK);
        }

        cartItem.setQuantity(newQuantity);

        cartItemRepository.save(cartItem);

        return cartItemMapper.toCartItemResponse(cartItem);
    }

    //Lưu vào giỏ tạm (session) khi user chưa login
    private CartItemResponse addToTempCart(CartItemRequest request) {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        if(attributes == null)
            throw new AppException(ErrorCode.SESSION_NOT_FOUND);

        HttpSession session = attributes.getRequest().getSession(true);

        Map<String, Integer> tempCart = (Map<String, Integer>) session.getAttribute("TEMP_CART");
        if(tempCart == null)
            tempCart = new HashMap<>();

        String productVariantId = request.getProductVariantId();
        int quantity = tempCart.getOrDefault(productVariantId, 0) + request.getQuantity();

        ProductVariant productVariant = productVariantRepository.findById(productVariantId)
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_VARIANT_NOT_FOUNT));

        if(quantity > productVariant.getStock())
            throw new AppException(ErrorCode.OUT_OF_STOCK);

        tempCart.put(productVariantId, quantity);
        session.setAttribute("TEMP_CART", tempCart);

        CartItem cartItem = CartItem.builder()
                .productVariant(productVariant)
                .quantity(quantity)
                .build();

        return cartItemMapper.toCartItemResponse(cartItem);
    }

    //Khi user login -> Merge giỏ tạm vào giỏ user
    private void mergeTempCartToUserCart(String username) {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        if(attributes == null)
            return;

        HttpSession session = attributes.getRequest().getSession(false);
        if(session == null)
            return;

        Map<String, Integer> tempCart = (Map<String, Integer>) session.getAttribute("TEMP_CART");
        if(tempCart == null || tempCart.isEmpty())
            return;

        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        String userId = user.getUserId();

        Cart cart = cartRepository.findByUser_UserId(userId)
                .orElseGet(() -> {
                    Cart newCart = Cart.builder()
                            .user(user)
                            .build();
                    return cartRepository.save(newCart);
                });

        for(Map.Entry<String, Integer> entry : tempCart.entrySet()) {
            String productVariantId = entry.getKey();
            int tempQuantity = entry.getValue();

            ProductVariant productVariant = productVariantRepository.findById(productVariantId)
                    .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_VARIANT_NOT_FOUNT));

            CartItem cartItem = cartItemRepository
                    .findByCart_CartIdAndProductVariant_ProductVariantId(cart.getCartId(), productVariantId)
                    .orElseGet(() -> {
                        CartItem newCartItem = CartItem.builder()
                                .cart(cart)
                                .productVariant(productVariant)
                                .quantity(0)
                                .build();
                        return cartItemRepository.save(newCartItem);
                    });

            int newQuantity = cartItem.getQuantity() + tempQuantity;
            if(newQuantity > productVariant.getStock())
                newQuantity = productVariant.getStock();

            cartItem.setQuantity(newQuantity);
            cartItemRepository.save(cartItem);
        }

        session.removeAttribute("TEMP_CART");
    }

    public CartItemResponse updateCartItemQuantity(String cartItemId, int quantity) {
        CartItem cartItem = cartItemRepository.findById(cartItemId)
                .orElseThrow(() -> new AppException(ErrorCode.CART_ITEM_NOT_EXISTED));

        ProductVariant productVariant = cartItem.getProductVariant();

        if(quantity > productVariant.getStock())
            throw new AppException(ErrorCode.OUT_OF_STOCK);

        if(quantity < 1)
            quantity = 1;

        cartItem.setQuantity(quantity);
        cartItem = cartItemRepository.save(cartItem);

        return cartItemMapper.toCartItemResponse(cartItem);
    }

    public void deleteCartItem(String cartItemId) {
        CartItem cartItem = cartItemRepository.findById(cartItemId)
                .orElseThrow(() -> new AppException(ErrorCode.CART_ITEM_NOT_EXISTED));

        cartItemRepository.delete(cartItem);
    }
}
