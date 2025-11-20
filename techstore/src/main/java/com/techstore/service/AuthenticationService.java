package com.techstore.service;

import com.nimbusds.jose.*;
import com.nimbusds.jose.crypto.MACSigner;
import com.nimbusds.jose.crypto.MACVerifier;
import com.nimbusds.jwt.JWTClaimsSet;
import com.nimbusds.jwt.SignedJWT;
import com.techstore.dto.request.AuthenticationRequest;
import com.techstore.dto.request.IntrospectRequest;
import com.techstore.dto.request.LogoutRequest;
import com.techstore.dto.request.RefreshRequest;
import com.techstore.dto.response.AuthenticationResponse;
import com.techstore.dto.response.IntrospectResponse;
import com.techstore.entity.InvalidatedToken;
import com.techstore.entity.User;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.repository.InvalidatedRepository;
import com.techstore.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.experimental.NonFinal;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.text.ParseException;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.Collections;
import java.util.Date;
import java.util.StringJoiner;
import java.util.UUID;

@Slf4j
@Service
@RequiredArgsConstructor
public class AuthenticationService {
    private final UserRepository userRepository;
    private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder(10);
    private final InvalidatedRepository invalidatedRepository;

    @NonFinal
    @Value("${jwt.signerKey}")
    private String SIGNER_KEY;

    @NonFinal
    @Value("${jwt.valid-duration}")
    private long VALID_DURATION;

    @NonFinal
    @Value("${jwt.refreshable-duration}")
    private long REFRESHABLE_DURATION;

    //Giải mã và kiểm tra token có hợp lệ không
    public IntrospectResponse introspect(IntrospectRequest request) throws JOSEException, ParseException {
        String token = request.getToken();

        boolean isValid = true;

        try {
            verifyToken(token, false);
        }
        catch(AppException e) {
            isValid = false;
        }

        return IntrospectResponse.builder()
                .valid(isValid)
                .build();
    }

    //Xác thực user dựa vào username và password -> Trả về token (nếu xác thực thành công)
    public AuthenticationResponse authenticate(AuthenticationRequest request) {
        User user = userRepository.findByUsername(request.getUsername())
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        boolean authenticated = passwordEncoder.matches(request.getPassword(), user.getPassword());

        if(!authenticated)
            throw new AppException(ErrorCode.INVALID_CREDENTIALS);

        String token = generateToken(user);

        return AuthenticationResponse.builder()
                .token(token)
                .authenticated(authenticated)
                .build();
    }

    public void logout(LogoutRequest request) throws ParseException, JOSEException {
        try {
            SignedJWT signedToken = verifyToken(request.getToken(), true);

            String jit = signedToken.getJWTClaimsSet().getJWTID();
            Date expiryTime = signedToken.getJWTClaimsSet().getExpirationTime();

            InvalidatedToken invalidatedToken = InvalidatedToken.builder()
                    .id(jit)
                    .expiryTime(expiryTime)
                    .build();

            invalidatedRepository.save(invalidatedToken);
        } catch(AppException e) {
            log.info("Token đã hết hạn");
        }
    }

    private SignedJWT verifyToken(String token, boolean isRefresh) throws JOSEException, ParseException {
        JWSVerifier verifier = new MACVerifier(SIGNER_KEY.getBytes());

        SignedJWT signedJWT = SignedJWT.parse(token);

        Date expiryTime = isRefresh
                ? new Date(signedJWT.getJWTClaimsSet().getIssueTime().toInstant().plus(REFRESHABLE_DURATION, ChronoUnit.SECONDS).toEpochMilli())
                : signedJWT.getJWTClaimsSet().getExpirationTime();

        boolean verified = signedJWT.verify(verifier);

        if(!(verified && expiryTime.after(new Date())))
            throw new AppException(ErrorCode.UNAUTHENTICATED);

        if(invalidatedRepository.existsById(signedJWT.getJWTClaimsSet().getJWTID()))
            throw new AppException(ErrorCode.UNAUTHENTICATED);

        return signedJWT;
    }

    public AuthenticationResponse refreshToken(RefreshRequest request) throws ParseException, JOSEException {
        SignedJWT signedJWT = verifyToken(request.getToken(), true);

        String jit = signedJWT.getJWTClaimsSet().getJWTID();
        Date expiryTime = signedJWT.getJWTClaimsSet().getExpirationTime();

        InvalidatedToken invalidatedToken = InvalidatedToken.builder()
                                                            .id(jit)
                                                            .expiryTime(expiryTime)
                                                            .build();

        invalidatedRepository.save(invalidatedToken);

        String username = signedJWT.getJWTClaimsSet().getSubject();

        User user = userRepository.findByUsername(username).orElseThrow(() -> new AppException(ErrorCode.UNAUTHENTICATED));

        String token = generateToken(user);

        return AuthenticationResponse.builder()
                                     .token(token)
                                     .authenticated(true)
                                     .build();
    }

    //Tạo token
    private String generateToken(User user) {
        JWSHeader header = new JWSHeader(JWSAlgorithm.HS512);

        JWTClaimsSet jwtClaimsSet = new JWTClaimsSet.Builder()
                .subject(user.getUsername())
                .issuer("techstore.com")
                .issueTime(new Date())
                .expirationTime(new Date(Instant.now().plus(VALID_DURATION, ChronoUnit.SECONDS).toEpochMilli()))
                .jwtID(UUID.randomUUID().toString()) //tokenID
                .claim("scope", buildScope(user)) //Lưu role hoặc permission
                .build();

        Payload payload = new Payload(jwtClaimsSet.toJSONObject());

        JWSObject jwsObject = new JWSObject(header, payload);

        try {
            jwsObject.sign(new MACSigner(SIGNER_KEY.getBytes()));
            return jwsObject.serialize();
        } catch (JOSEException e) {
            log.error("Không thể tạo token", e);
            throw new RuntimeException(e);
        }
    }

    public String buildScope(User user) {
        StringJoiner stringJoiner = new StringJoiner(" ");
        if(!CollectionUtils.isEmpty(user.getRoles())) {
            user.getRoles().forEach(role -> stringJoiner.add(role.getRoleName()));
        }
        return stringJoiner.toString();
    }
}
