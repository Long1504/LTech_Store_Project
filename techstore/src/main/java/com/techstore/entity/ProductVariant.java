package com.techstore.entity;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "product_variant")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductVariant {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private String productVariantId;

    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;

    @Column(nullable = false)
    private String color;

    @Column(nullable = false)
    private BigDecimal originalPrice;

    private BigDecimal promotionalPrice;

    @Column(nullable = false)
    @Builder.Default
    private Integer stock = 0;

    @Column(nullable = false)
    @Builder.Default
    private Boolean isDefault = false;

    @OneToMany(mappedBy = "productVariant", cascade = CascadeType.ALL)
    private List<ProductSpec> productSpecs;
}
