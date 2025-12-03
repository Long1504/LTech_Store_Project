package com.techstore.service;

import com.techstore.dto.request.ProductCreateRequest;
import com.techstore.dto.response.ProductOverviewResponse;
import com.techstore.dto.response.ProductResponse;
import com.techstore.dto.response.ReviewResponse;
import com.techstore.entity.Brand;
import com.techstore.entity.Category;
import com.techstore.entity.Product;
import com.techstore.entity.Review;
import com.techstore.enums.ProductStatus;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.mapper.ProductMapper;
import com.techstore.mapper.ReviewMapper;
import com.techstore.repository.BrandRepository;
import com.techstore.repository.CategoryRepository;
import com.techstore.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;
    private final CategoryRepository categoryRepository;
    private final BrandRepository brandRepository;

    private final ProductMapper productMapper;
    private final ReviewMapper reviewMapper;

    public ProductResponse createProduct(ProductCreateRequest request) {
        Product product = productMapper.toProduct(request);

        Category category = categoryRepository.findById(request.getCategoryId())
                .orElseThrow(() -> new AppException(ErrorCode.CATEGORY_NOT_EXISTED));

        Brand brand = brandRepository.findById(request.getBrandId())
                .orElseThrow(() -> new AppException(ErrorCode.BRAND_NOT_EXISTED));

        product.setCategory(category);
        product.setBrand(brand);

        if(product.getImages() != null) {
            Product tmp = product;
            product.getImages().forEach(img -> img.setProduct(tmp));
        }

        product = productRepository.save(product);

        return productMapper.toProductResponse(product);
    }

    public List<ProductResponse> getAllProducts() {
        return productRepository.findAll()
                .stream()
                .map(product -> {
                    ProductResponse productResponse = productMapper.toProductResponse(product);
                    List<ReviewResponse> reviewResponses = new ArrayList<>();
                    for(Review review : product.getReviews()) {
                        reviewResponses.add(reviewMapper.toReviewResponse(review));
                    }
                    productResponse.setReviews(reviewResponses);
                    return productResponse;
                })
                .toList();
    }

    public List<ProductResponse> getAllProductsByCategoryIdAndBrandId(String categoryId, String brandId) {
        return productRepository.findAllByCategoryIdAndBrandId(categoryId, brandId)
                .stream()
                .map(product -> productMapper.toProductResponse(product))
                .toList();
    }

    public ProductResponse getProductByProductId(String productId) {
        Product product = productRepository.findById(productId)
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_NOT_FOUND));

        ProductResponse productResponse = productMapper.toProductResponse(product);
        List<ReviewResponse> reviewResponses = new ArrayList<>();
        for(Review review : product.getReviews()) {
            reviewResponses.add(reviewMapper.toReviewResponse(review));
        }
        productResponse.setReviews(reviewResponses);
        return productResponse;
    }

    public List<ProductOverviewResponse> getAllProductOverviews(String categoryName, String brandName) {
        List<ProductOverviewResponse> products = productRepository.findAllProductOverviews(categoryName, brandName);
        if(products.isEmpty())
            throw new AppException(ErrorCode.PRODUCT_NOT_FOUND);
        return products;
    }

    public List<ProductOverviewResponse> searchProductsByKeyword(String keyword) {
        List<ProductOverviewResponse> products = productRepository.searchProductsByKeyword(keyword);
        if(products.isEmpty()) {
            throw new AppException(ErrorCode.PRODUCT_NOT_FOUND);
        }
        return products;
    }


    public ProductResponse changeProductStatus(String productId) {
        Product product = productRepository.findById(productId)
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_NOT_FOUND));

        if(product.getProductStatus().equals(ProductStatus.ACTIVE.name()))
            product.setProductStatus(ProductStatus.LOCKED.name());
        else
            product.setProductStatus(ProductStatus.ACTIVE.name());

        productRepository.save(product);

        return productMapper.toProductResponse(product);
    }

    public void deleteProduct(String productId) {
        Product product = productRepository.findById(productId)
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_NOT_FOUND));

        productRepository.delete(product);
    }
}
