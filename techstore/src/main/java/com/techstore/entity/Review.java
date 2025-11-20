package com.techstore.entity;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "review")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor

public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private String reviewId;

    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(nullable = false)
    private Integer rating;

    private String comment;

    private LocalDateTime createdAt;
}
