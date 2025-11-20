package com.techstore.exception;

import com.nimbusds.jose.JOSEException;
import com.techstore.dto.response.ApiResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.text.ParseException;

@Slf4j
@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(RuntimeException.class)
    public ResponseEntity<ApiResponse> handleRuntimeException(RuntimeException exception) {
        log.error("Runtime exception: ", exception);

        ErrorCode errorCode = ErrorCode.UNAUTHORIZED_EXCEPTION;

        ApiResponse apiResponse = new ApiResponse();
        apiResponse.setCode(errorCode.getCode());
        apiResponse.setMessage(errorCode.getMessage());

        return ResponseEntity.status(errorCode.getStatusCode()).body(apiResponse);
    }

    @ExceptionHandler(value = AppException.class) //Exception muốn bắt
    ResponseEntity<ApiResponse> handlingAppException(AppException exception) {
        ErrorCode errorCode = exception.getErrorCode();

        ApiResponse apiResponse = new ApiResponse();

        apiResponse.setCode(errorCode.getCode());
        apiResponse.setMessage(errorCode.getMessage());

        return ResponseEntity.status(errorCode.getStatusCode()).body(apiResponse);
    }

    @ExceptionHandler(value = {JOSEException.class, ParseException.class})
    ResponseEntity<ApiResponse> handleTokenExceptions(Exception exception) {
        ErrorCode errorCode = ErrorCode.INVALID_TOKEN;

        ApiResponse apiResponse = new ApiResponse();
        apiResponse.setCode(errorCode.getCode());
        apiResponse.setMessage(errorCode.getMessage());

        return ResponseEntity.status(errorCode.getStatusCode()).body(apiResponse);
    }

    @ExceptionHandler(Exception.class)
    public ResponseEntity<ApiResponse> handleGeneralException(Exception exception) {
        exception.printStackTrace();
        log.error("Unhandled exception: ", exception);

        ErrorCode errorCode = ErrorCode.UNAUTHORIZED_EXCEPTION;

        ApiResponse apiResponse = new ApiResponse();
        apiResponse.setCode(errorCode.getCode());
        apiResponse.setMessage("Đã xảy ra lỗi không xác định");

        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(apiResponse);
    }


    @ExceptionHandler(value = AccessDeniedException.class)
    ResponseEntity<ApiResponse> handlingAccessDeniedException(AccessDeniedException exception) {
        ErrorCode errorCode = ErrorCode.UNAUTHORIZED;

        return ResponseEntity.status(errorCode.getStatusCode()).body(
                ApiResponse.builder()
                        .code(errorCode.getCode())
                        .message(errorCode.getMessage())
                        .build()
        );
    }

//    @ExceptionHandler(value = MethodArgumentNotValidException.class)
//    ResponseEntity<ApiResponse> handlingMethodArgumentNotValidException(MethodArgumentNotValidException exception) {
//        String enumKey = exception.getFieldError().getDefaultMessage();
//        ErrorCode errorCode = ErrorCode.INVALID_KEY;
//
//        Map<String, Object> attributes = null;
//        try {
//            errorCode = ErrorCode.valueOf(enumKey);
//
//            var constraintViolation = exception.getBindingResult().getAllErrors().getFirst().unwrap(ConstraintViolation.class);
//
//            attributes = constraintViolation.getConstraintDescriptor().getAttributes();
//
//            log.info(attributes.toString());
//        }
//        catch (IllegalArgumentException e) {
//
//        }
//
//        ApiResponse apiResponse = new ApiResponse();
//
//        apiResponse.setCode(errorCode.getCode());
//        apiResponse.setMessage(Objects.nonNull(attributes) ? mapAttribute(errorCode.getMessage(), attributes) : errorCode.getMessage());
//
//        return ResponseEntity.badRequest().body(apiResponse);
//    }

//    private String mapAttribute(String message, Map<String, Object> attributes) {
//        String minValue = String.valueOf(attributes.get(MIN_ATTRIBUTE));
//
//        return message.replace("{" + MIN_ATTRIBUTE + "}", minValue);
//    }
}
