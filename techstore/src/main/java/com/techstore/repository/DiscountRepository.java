package com.techstore.repository;

import com.techstore.entity.Discount;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface DiscountRepository extends JpaRepository<Discount, String> {

    List<Discount> findAllByOrderByEndDateDesc();

    boolean existsByCode(String code);

    Optional<Discount> findByCode(String code);
}
