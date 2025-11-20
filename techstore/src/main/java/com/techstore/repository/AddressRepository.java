package com.techstore.repository;

import com.techstore.entity.Address;
import com.techstore.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AddressRepository extends JpaRepository<Address, String> {
    boolean existsByUserAndIsDefaultTrue(User user);

    List<Address> findAllByUser(User user);

    Address findByUserAndIsDefaultTrue(User user);
}
