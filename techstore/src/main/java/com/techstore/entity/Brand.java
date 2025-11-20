package com.techstore.entity;

import jakarta.persistence.*;
import lombok.*;
import java.util.Set;

@Entity
@Table(name = "brand")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Brand {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private String brandId;

    @Column(nullable = false, unique = true)
    private String brandName;

    @OneToMany(mappedBy = "brand", cascade = CascadeType.ALL)
    private Set<Product> products;
}
