package com.techstore.mapper;

import com.techstore.dto.request.OrderRequest;
import com.techstore.dto.response.OrderResponse;
import com.techstore.entity.Order;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface OrderMapper {

    @Mapping(target = "user", ignore = true)
    @Mapping(target = "orderItems", ignore = true)
    @Mapping(target = "payment", ignore = true)
    Order toOrder(OrderRequest orderRequest);

    @Mapping(target = "orderItems", ignore = true)
    @Mapping(target = "payment", ignore = true)
    OrderResponse toOrderResponse(Order order);
}
