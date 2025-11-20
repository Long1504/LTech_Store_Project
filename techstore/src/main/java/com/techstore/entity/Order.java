package com.techstore.entity;

import com.techstore.enums.OrderStatus;
import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Random;
import java.util.Set;

@Entity
@Table(name = "orders")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private String orderId;

    @Column(nullable = false)
    private String orderCode;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    private BigDecimal totalAmount;

    @Builder.Default
    private String orderStatus = OrderStatus.PENDING.name();

    private String note;

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

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

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    private List<OrderItem> orderItems;

    @OneToOne(mappedBy = "order", cascade = CascadeType.ALL)
    private Payment payment;

    @PrePersist
    protected void onCreate() {
        createdAt = LocalDateTime.now();
        updatedAt = LocalDateTime.now();
        generateOrderCode();
    }

    @PreUpdate
    protected void onUpdate() {
        updatedAt = LocalDateTime.now();
    }

    // Sinh orderCode: ORDddMMyyyyHHmmssXXX
    private void generateOrderCode() {
        if (orderCode == null || orderCode.isEmpty()) {
            String dateTime = LocalDateTime.now().format(DateTimeFormatter.ofPattern("ddMMyyyyHHmmss"));
            int randomNumber = new Random().nextInt(900) + 100; // 100-999
            this.orderCode = "ORD-" + dateTime + randomNumber;
        }
    }
}
