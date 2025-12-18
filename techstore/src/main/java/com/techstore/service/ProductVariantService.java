package com.techstore.service;

import com.techstore.dto.request.ProductSpecRequest;
import com.techstore.dto.request.ProductVariantCreateRequest;
import com.techstore.dto.request.ProductVariantUpdateRequest;
import com.techstore.dto.response.ProductVariantResponse;
import com.techstore.entity.Product;
import com.techstore.entity.ProductSpec;
import com.techstore.entity.ProductVariant;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.mapper.ProductSpecMapper;
import com.techstore.mapper.ProductVariantMapper;
import com.techstore.repository.ProductRepository;
import com.techstore.repository.ProductVariantRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class ProductVariantService {
    private final ProductVariantRepository productVariantRepository;
    private final ProductRepository productRepository;

    private final ProductVariantMapper productVariantMapper;
    private final ProductSpecMapper productSpecMapper;

    @Transactional
    public ProductVariantResponse createProductVariant(ProductVariantCreateRequest request) {
        ProductVariant productVariant = productVariantMapper.toProductVariant(request);

        Product product = productRepository.findById(request.getProductId())
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_NOT_FOUND));

        var currentDefaultOption = productVariantRepository.findByProduct_ProductIdAndIsDefaultTrue(request.getProductId());

        productVariant.setProduct(product);

        if(currentDefaultOption.isEmpty()) {
            productVariant.setIsDefault(true);
        } else {
            ProductVariant currentDefaultProductVariant = currentDefaultOption.get();
            if(Boolean.TRUE.equals(productVariant.getIsDefault())) {
                currentDefaultProductVariant.setIsDefault(false);
                productVariant.setIsDefault(true);
                productVariantRepository.save(currentDefaultProductVariant);
            } else {
                productVariant.setIsDefault(false);
            }
        }

        List<ProductSpec> productSpecs = new ArrayList<>();
        for(ProductSpecRequest productSpecRequest : request.getProductSpecs()) {
            ProductSpec productSpec = productSpecMapper.toProductSpec(productSpecRequest);
            productSpec.setProductVariant(productVariant);
            productSpecs.add(productSpec);
        }

        productVariant.setProductSpecs(productSpecs);

        productVariant = productVariantRepository.save(productVariant);

        return productVariantMapper.toProductVariantResponse(productVariant);
    }

    @Transactional
    public ProductVariantResponse updateProductVariant(String productVariantId, ProductVariantUpdateRequest request) {
        ProductVariant productVariant = productVariantRepository.findById(productVariantId)
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_VARIANT_NOT_FOUNT));

        if (request.getColor() != null) {
            productVariant.setColor(request.getColor());
        }
        if (request.getOriginalPrice() != null) {
            productVariant.setOriginalPrice(request.getOriginalPrice());
        }
        if (request.getPromotionalPrice() != null) {
            productVariant.setPromotionalPrice(request.getPromotionalPrice());
        }
        if (request.getStock() != null) {
            productVariant.setStock(request.getStock());
        }

        if (request.getIsDefault() != null) {
            if (request.getIsDefault()) {
                if (!Boolean.TRUE.equals(productVariant.getIsDefault())) {
                    productVariantRepository
                            .findByProduct_ProductIdAndIsDefaultTrue(
                                    productVariant.getProduct().getProductId()
                            )
                            .ifPresent(currentDefault -> {
                                if (!currentDefault.getProductVariantId()
                                        .equals(productVariant.getProductVariantId())) {
                                    currentDefault.setIsDefault(false);
                                }
                            });
                    productVariant.setIsDefault(true);
                }

            }
        }

        if(request.getProductSpecs() != null) {
            productVariant.getProductSpecs().clear();
            List<ProductSpec> newSpecs = new ArrayList<>();
            for (ProductSpecRequest specRequest : request.getProductSpecs()) {
                ProductSpec spec = productSpecMapper.toProductSpec(specRequest);
                spec.setProductVariant(productVariant);
                newSpecs.add(spec);
            }
            productVariant.getProductSpecs().addAll(newSpecs);
        }

        productVariantRepository.save(productVariant);

        return productVariantMapper.toProductVariantResponse(productVariant);
    }
}
