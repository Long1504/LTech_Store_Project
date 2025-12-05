package com.techstore.config;

import com.techstore.enums.RoleName;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationConverter;
import org.springframework.security.oauth2.server.resource.authentication.JwtGrantedAuthoritiesConverter;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import java.util.List;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity
@RequiredArgsConstructor
public class SecurityConfig {
    private final CustomJwtDecoder customJwtDecoder;

    private final String[] PUBLIC_ENDPOINTS_POST = {
            "/api/users/register",
            "/api/auth/login", "/api/auth/introspect", "/api/auth/logout", "/api/auth/refresh",
            "/api/carts",
            "/api/cart-item"
    };

    private final String[] PUBLIC_ENDPOINTS_GET = {
            "/api/products/**",
            "/api/products/phones",
            "/api/products/laptops",
            "/api/products/charging-adapters",
            "/api/products/charging-cables",
            "/api/products/mouses",
            "/api/products/keyboards",
            "/api/products/search",
            "/api/products/latest",
            "/api/brands",
            "/api/carts/cart-item-count",
            "/api/discounts/customer"
    };

    private final String[] ADMIN_ENDPOINTS = {
            "/api/brands",
            "/api/users/customers/**",
            "/api/categories",
            "/api/upload/**",
            "/api/product-variants/**",
            "/api/payments/**"
    };

    private final String[] ADMIN_ENDPOINTS_POST = {
            "/api/discounts",
            "/api/brands"
    };

    private final String[] ADMIN_ENDPOINTS_GET = {
            "/api/discounts",
            "/api/brands"
    };

    private final String[] ADMIN_ENDPOINTS_PUT = {
            "/api/discounts/*/status",
            "/api/discounts/*",
            "/api/brands/*"
    };

    private final String[] ADMIN_ENDPOINTS_DELETE = {
            "/api/products/*",
            "/api/discounts/*",
            "/api/brands/*"
    };

    private final String[] CUSTOMER_ENDPOINTS_POST = {
            "/api/addresses/**",
            "/api/discounts/apply",
            "/api/orders/**",
            "/api/reviews"
    };

    private final String[] CUSTOMER_ENDPOINTS_GET = {
            "/api/users/my-info",
            "/api/addresses/**",
            "/api/orders/my-orders",
            "/api/reviews/my-reviews"
    };

    private final String[] CUSTOMER_ENDPOINTS_PUT = {
            "/api/reviews",
            "/api/users/my-info",
            "/api/users/password"
    };

    private final String[] CUSTOMER_ENDPOINTS_DELETE = {
            "/api/reviews"
    };

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {
        httpSecurity
                .cors(cors -> cors.configurationSource(corsConfigurationSource()))
                .csrf(csrf -> csrf.disable())
                .authorizeHttpRequests(request -> request
                        .requestMatchers(HttpMethod.POST, PUBLIC_ENDPOINTS_POST).permitAll()
                        .requestMatchers(HttpMethod.GET, PUBLIC_ENDPOINTS_GET).permitAll()
                        .requestMatchers(ADMIN_ENDPOINTS).hasRole(RoleName.ADMIN.name())
                        .requestMatchers(HttpMethod.POST, ADMIN_ENDPOINTS_POST).hasRole(RoleName.ADMIN.name())
                        .requestMatchers(HttpMethod.GET, ADMIN_ENDPOINTS_GET).hasRole(RoleName.ADMIN.name())
                        .requestMatchers(HttpMethod.PUT, ADMIN_ENDPOINTS_PUT).hasRole(RoleName.ADMIN.name())
                        .requestMatchers(HttpMethod.DELETE, ADMIN_ENDPOINTS_DELETE).hasRole(RoleName.ADMIN.name())
                        .requestMatchers(HttpMethod.POST, CUSTOMER_ENDPOINTS_POST).hasRole(RoleName.CUSTOMER.name())
                        .requestMatchers(HttpMethod.GET, CUSTOMER_ENDPOINTS_GET).hasRole(RoleName.CUSTOMER.name())
                        .requestMatchers(HttpMethod.PUT, CUSTOMER_ENDPOINTS_PUT).hasRole(RoleName.CUSTOMER.name())
                        .requestMatchers(HttpMethod.DELETE, CUSTOMER_ENDPOINTS_DELETE).hasRole(RoleName.CUSTOMER.name())
                        .anyRequest().authenticated()
                )
                .oauth2ResourceServer(oauth2 -> oauth2
                        .jwt(jwtConfigurer -> jwtConfigurer
                                .decoder(customJwtDecoder)
                                .jwtAuthenticationConverter(jwtAuthenticationConverter()))
                        .authenticationEntryPoint(new JwtAuthenticationEntryPoint())
                );

        return httpSecurity.build();
    }

    //Custom lại scope (mặc định là SCOPE_)
    @Bean
    public JwtAuthenticationConverter jwtAuthenticationConverter() {
        JwtGrantedAuthoritiesConverter jwtGrantedAuthoritiesConverter = new JwtGrantedAuthoritiesConverter();
        jwtGrantedAuthoritiesConverter.setAuthorityPrefix("ROLE_");

        JwtAuthenticationConverter jwtAuthenticationConverter = new JwtAuthenticationConverter();
        jwtAuthenticationConverter.setJwtGrantedAuthoritiesConverter(jwtGrantedAuthoritiesConverter);

        return jwtAuthenticationConverter;
    }

    //Cấu hình CORS cho phép frontend truy cập
    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
        CorsConfiguration configuration = new CorsConfiguration();
        configuration.setAllowedOrigins(List.of("http://127.0.0.1:5500", "http://localhost:5500", "http://127.0.0.1:5501", "http://localhost:5501"));
        configuration.setAllowedMethods(List.of("GET", "POST", "PUT", "DELETE", "OPTIONS"));
        configuration.setAllowedHeaders(List.of("*"));
        configuration.setAllowCredentials(true); //Cho phép gửi cookie/token nếu cần

        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", configuration);
        return source;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder(10);
    }

//    @Bean
//    public JwtDecoder jwtDecoder() {
//        SecretKeySpec secretKeySpec = new SecretKeySpec(signerKey.getBytes(), "HS512");
//
//        return NimbusJwtDecoder
//                .withSecretKey(secretKeySpec)
//                .macAlgorithm(MacAlgorithm.HS512)
//                .build();
//    }
}