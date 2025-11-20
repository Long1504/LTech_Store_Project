package com.techstore.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "image")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private String imageId;

    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;

    @Column(nullable = false)
    private String imageUrl;

    @Column(nullable = false)
    @Builder.Default
    private Boolean isMain = false;
}
