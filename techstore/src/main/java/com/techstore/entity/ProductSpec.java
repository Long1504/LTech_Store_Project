package com.techstore.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "product_spec")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductSpec {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private String productSpecId;

    @ManyToOne
    @JoinColumn(name = "product_variant_id", nullable = false)
    private ProductVariant productVariant;

    @Column(nullable = false, length = 100)
    private String specKey;

    @Column(nullable = false, length = 255)
    private String specValue;
}
