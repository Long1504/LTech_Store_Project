package com.techstore.service;

import com.techstore.dto.request.BrandRequest;
import com.techstore.dto.response.BrandResponse;
import com.techstore.entity.Brand;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.mapper.BrandMapper;
import com.techstore.repository.BrandRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class BrandService {
    private final BrandRepository brandRepository;
    private final BrandMapper brandMapper;

    public BrandResponse createBrand(BrandRequest request) {
        if(brandRepository.existsByBrandName(request.getBrandName()))
            throw new AppException(ErrorCode.BRAND_EXISTED);
        Brand brand = brandMapper.toBrand(request);
        brand = brandRepository.save(brand);
        return brandMapper.toBrandResponse(brand);
    }

    public List<BrandResponse> getAllBrands() {
        return brandRepository.findAll()
                .stream()
                .map(brand -> brandMapper.toBrandResponse(brand))
                .toList();
    }
}
