package com.techstore.entity;

import com.techstore.enums.AddressType;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "address")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private String addressId;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(nullable = false)
    @Builder.Default
    private String addressType = AddressType.HOME.name();

    @Column(nullable = false)
    private String recipientName;

    @Column(nullable = false)
    private String recipientPhone;

    @Column(nullable = false)
    private String city;

    @Column(nullable = false)
    private String district;

    @Column(nullable = false)
    private String ward;

    private String detailAddress;

    @Column(nullable = false)
    @Builder.Default
    private Boolean isDefault = false;
}
