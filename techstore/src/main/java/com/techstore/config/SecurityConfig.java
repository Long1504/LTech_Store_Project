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
            "/api/products/**"
    };

    private final String[] ADMIN_ENDPOINTS = {
            "/api/brands",
            "/api/users/customers/**",
            "/api/categories",
            "/api/upload/**",
            "/api/product-variants/**"
    };

    private final String[] CUSTOMER_ENDPOINTS_POST = {
            "/api/addresses/**",
            "/api/discounts/apply",
            "/api/orders/**"
    };

    private final String[] CUSTOMER_ENDPOINTS_GET = {
            "/api/addresses/**"
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
                        .requestMatchers(HttpMethod.POST, CUSTOMER_ENDPOINTS_POST).hasRole(RoleName.CUSTOMER.name())
                        .requestMatchers(HttpMethod.GET, CUSTOMER_ENDPOINTS_GET).hasRole(RoleName.CUSTOMER.name())
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