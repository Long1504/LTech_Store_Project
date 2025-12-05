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
import org.springframework.transaction.annotation.Transactional;

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

    @Transactional
    public BrandResponse updateBrand(String brandId, BrandRequest brandRequest) {
        Brand brand = brandRepository.findById(brandId)
                .orElseThrow(() -> new AppException(ErrorCode.BRAND_NOT_EXISTED));

        if(!brand.getBrandName().equals(brandRequest.getBrandName()) && brandRepository.existsByBrandName(brandRequest.getBrandName())) {
            throw new AppException(ErrorCode.BRAND_EXISTED);
        }

        brand.setBrandName(brandRequest.getBrandName());
        brandRepository.save(brand);
        return brandMapper.toBrandResponse(brand);
    }

    @Transactional
    public void deleteBrand(String brandId) {
        Brand brand = brandRepository.findById(brandId)
                .orElseThrow(() -> new AppException(ErrorCode.BRAND_NOT_EXISTED));

        brandRepository.delete(brand);
    }
}
