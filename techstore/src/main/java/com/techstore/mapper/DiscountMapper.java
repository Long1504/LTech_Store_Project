package com.techstore.mapper;

import com.techstore.dto.response.DiscountResponse;
import com.techstore.entity.Discount;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface DiscountMapper {
    DiscountResponse toDiscountResponse(Discount discount);
}
