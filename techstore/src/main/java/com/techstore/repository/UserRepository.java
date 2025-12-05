package com.techstore.repository;

import com.techstore.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, String> {
    boolean existsByUsername(String username);

    boolean existsByEmail(String email);

    boolean existsByPhoneNumber(String phoneNumber);

    Optional<User> findByUsername(String username);

    List<User> findAllByRoles_RoleName(String roleName);

    @Query("SELECT COUNT(u) FROM User u WHERE DATE(u.createdAt) = CURRENT_DATE")
    int countToday();

    @Query("SELECT COUNT(u) FROM User u WHERE YEAR(u.createdAt) = YEAR(CURRENT_DATE) " +
            "AND MONTH(u.createdAt) = MONTH(CURRENT_DATE)")
    int countMonth();

    @Query("SELECT COUNT(u) FROM User u WHERE YEAR(u.createdAt) = YEAR(CURRENT_DATE)")
    int countYear();

    // daily new users in current month: (day, count)
    @Query(value = "SELECT DAY(u.created_at) AS d, COUNT(*) AS cnt " +
            "FROM user u " +
            "WHERE MONTH(u.created_at) = MONTH(CURRENT_DATE()) " +
            "  AND YEAR(u.created_at) = YEAR(CURRENT_DATE()) " +
            "GROUP BY DAY(u.created_at) " +
            "ORDER BY d", nativeQuery = true)
    List<Object[]> getDailyUserCounts();

    // monthly new users in current year: (month, count)
    @Query(value = "SELECT MONTH(u.created_at) AS m, COUNT(*) AS cnt " +
            "FROM user u " +
            "WHERE YEAR(u.created_at) = YEAR(CURRENT_DATE()) " +
            "GROUP BY MONTH(u.created_at) " +
            "ORDER BY m", nativeQuery = true)
    List<Object[]> getMonthlyUserCounts();

    // yearly new users: (year, count)
    @Query(value = "SELECT YEAR(u.created_at) AS y, COUNT(*) AS cnt " +
            "FROM user u " +
            "GROUP BY YEAR(u.created_at) " +
            "ORDER BY y", nativeQuery = true)
    List<Object[]> getYearlyUserCounts();
}
