package com.techstore.entity;

import com.techstore.enums.PaymentMethod;
import com.techstore.enums.PaymentStatus;
import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "payment")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private String paymentId;

    @OneToOne
    @JoinColumn(name = "order_id", nullable = false)
    private Order order;

    private BigDecimal amount;

    private String paymentMethod;

    @Builder.Default
    private String paymentStatus = PaymentStatus.PENDING.name();

    private LocalDateTime paidAt;
}
