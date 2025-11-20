package com.techstore.service;

import com.techstore.dto.request.OrderItemRequest;
import com.techstore.dto.request.OrderRequest;
import com.techstore.dto.response.OrderItemResponse;
import com.techstore.dto.response.OrderResponse;
import com.techstore.entity.*;
import com.techstore.enums.OrderStatus;
import com.techstore.enums.PaymentStatus;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.mapper.OrderItemMapper;
import com.techstore.mapper.OrderMapper;
import com.techstore.mapper.PaymentMapper;
import com.techstore.repository.*;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class OrderService {

    private final UserRepository userRepository;
    private final OrderRepository orderRepository;
    private final ProductVariantRepository productVariantRepository;
    private final PaymentRepository paymentRepository;
    private final DiscountRepository discountRepository;

    private final OrderMapper orderMapper;
    private final OrderItemMapper orderItemMapper;
    private final PaymentMapper paymentMapper;

    public OrderResponse createOrder(OrderRequest request) {

        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        Discount discount = null;
        if (request.getDiscountCode() != null) {
            discount = discountRepository.findByCode(request.getDiscountCode())
                    .orElseThrow(() -> new AppException(ErrorCode.DISCOUNT_NOT_EXISTED));

            if (discount.getQuantity() <= 0) {
                throw new AppException(ErrorCode.DISCOUNT_INVALID);
            }
        }

        Order order = orderMapper.toOrder(request);
        order.setUser(user);
        order.setOrderStatus(OrderStatus.PENDING.name());

        List<OrderItem> orderItems = new ArrayList<>();
        for (OrderItemRequest itemRequest : request.getOrderItems()) {
            ProductVariant variant = productVariantRepository.findById(itemRequest.getProductVariantId())
                    .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_VARIANT_NOT_FOUNT));

            if (variant.getStock() < itemRequest.getQuantity())
                throw new AppException(ErrorCode.OUT_OF_STOCK);

            // Trừ kho
            variant.setStock(variant.getStock() - itemRequest.getQuantity());
            productVariantRepository.save(variant);

            OrderItem orderItem = OrderItem.builder()
                    .order(order)
                    .productVariant(variant)
                    .quantity(itemRequest.getQuantity())
                    .price(itemRequest.getPrice())
                    .build();

            orderItems.add(orderItem);
        }

        order.setOrderItems(orderItems);

        Payment payment = Payment.builder()
                .order(order)
                .amount(request.getTotalAmount())
                .paymentMethod(request.getPaymentMethod())
                .paymentStatus(PaymentStatus.PENDING.name())
                .build();

        order.setPayment(payment);

        if (discount != null) {
            discount.setQuantity(discount.getQuantity() - 1);
            discountRepository.save(discount);
        }

        order = orderRepository.save(order);

        List<OrderItemResponse> itemResponses = new ArrayList<>();

        for (OrderItem item : order.getOrderItems()) {
            itemResponses.add(orderItemMapper.toOrderItemResponse(item));
        }

        OrderResponse response = orderMapper.toOrderResponse(order);

        response.setOrderItems(itemResponses);
        response.setPayment(paymentMapper.toPaymentResponse(order.getPayment()));

        return response;
    }

    public OrderResponse getOrderByOrderId(String orderId) {
        Order order = orderRepository.findById(orderId)
                .orElseThrow(() -> new AppException(ErrorCode.ORDER_NOT_EXISTED));

        OrderResponse orderResponse = orderMapper.toOrderResponse(order);

        List<OrderItemResponse> orderItemResponses = new ArrayList<>();

        for (OrderItem item : order.getOrderItems()) {
            orderItemResponses.add(orderItemMapper.toOrderItemResponse(item));
        }

        orderResponse.setOrderItems(orderItemResponses);
        orderResponse.setPayment(paymentMapper.toPaymentResponse(order.getPayment()));

        return orderResponse;
    }
}
