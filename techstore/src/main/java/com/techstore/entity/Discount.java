package com.techstore.entity;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "discount")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Discount {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private String discountId;

    @Column(nullable = false, unique = true)
    private String code;

    private String description;

    @Column(nullable = false)
    private Integer discountPercent;

    @Column(nullable = false)
    @Builder.Default
    private BigDecimal minOrderAmount = BigDecimal.valueOf(0.0);

    private BigDecimal maxDiscountAmount;

    @Column(nullable = false)
    private Integer quantity;

    @Column(nullable = false)
    private LocalDate startDate;

    @Column(nullable = false)
    private LocalDate endDate;

    @Column(nullable = false)
    @Builder.Default
    private Boolean isActive = true;
}
