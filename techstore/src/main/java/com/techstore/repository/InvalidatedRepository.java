package com.techstore.repository;

import com.techstore.entity.InvalidatedToken;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface InvalidatedRepository extends JpaRepository<InvalidatedToken, String> {

}
