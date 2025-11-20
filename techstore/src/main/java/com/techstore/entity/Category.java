package com.techstore.entity;

import jakarta.persistence.*;
import lombok.*;
import java.util.Set;

@Entity
@Table(name = "category")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private String categoryId;

    @Column(nullable = false, unique = true)
    private String categoryName;

    @OneToMany(mappedBy = "category", cascade = CascadeType.ALL)
    private Set<Product> products;
}