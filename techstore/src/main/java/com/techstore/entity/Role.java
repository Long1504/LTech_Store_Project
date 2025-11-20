package com.techstore.entity;

import jakarta.persistence.*;
import lombok.*;
import java.util.Set;

@Entity
@Table(name = "role")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Role {
    @Id @GeneratedValue(strategy = GenerationType.UUID)
    private String roleId;

    @Column(nullable = false, unique = true)
    private String roleName;

    @ManyToMany(mappedBy = "roles")
    private Set<User> users;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Role)) return false;
        Role role = (Role) o;
        return roleName != null && roleName.equals(role.roleName);
    }

    @Override
    public int hashCode() {
        return roleName != null ? roleName.hashCode() : 0;
    }
}
