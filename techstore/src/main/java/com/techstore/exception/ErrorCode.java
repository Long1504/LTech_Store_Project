package com.techstore.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;

@Getter
public enum ErrorCode {
    //Chung
    UNAUTHORIZED_EXCEPTION(9999, "Unauthorized error", HttpStatus.INTERNAL_SERVER_ERROR),

    //Role
    ROLE_NOT_EXISTED(1001, "Role không tồn tại", HttpStatus.NOT_FOUND),
    ROLE_EXISTED(1002, "Role đã tồn tại", HttpStatus.CONFLICT),

    //User
    USER_EXISTED(2001, "User đã tồn tại", HttpStatus.CONFLICT),
    USER_NOT_EXISTED(2002, "Tài khoản không tồn tại", HttpStatus.NOT_FOUND),
    USERNAME_EXISTED(2003, "Tên đăng nhập đã tồn tại", HttpStatus.CONFLICT),
    EMAIL_EXISTED(2004, "Email đã tồn tại", HttpStatus.CONFLICT),
    PHONE_NUMBER_EXISTED(2005, "Số điện thoại đã tồn tại", HttpStatus.CONFLICT),
    USERNAME_INVALID(2006, "Username phải có ít nhất {min} ký tự", HttpStatus.BAD_REQUEST),
    INVALID_PASSWORD(2007, "Password phải có ít nhất {min} ký tự", HttpStatus.BAD_REQUEST),
    INVALID_DOB(2008, "Tuổi của bạn phải ít nhất {min}", HttpStatus.BAD_REQUEST),
    PASSWORD_INCORRECT(2009, "Mật khẩu không đúng", HttpStatus.BAD_REQUEST),

    //Brand
    BRAND_EXISTED(3001, "Thương hiệu đã tồn tại", HttpStatus.CONFLICT),
    BRAND_NOT_EXISTED(3002, "Thương hiệu không tồn tại", HttpStatus.NOT_FOUND),

    //Category
    CATEGORY_EXISTED(4001, "Danh mục đã tồn tại", HttpStatus.CONFLICT),
    CATEGORY_NOT_EXISTED(4002, "Danh mục không tồn tại", HttpStatus.NOT_FOUND),

    //Product
    PRODUCT_NOT_FOUND(5001, "Không tìm thấy sản phẩm phù hợp", HttpStatus.NOT_FOUND),

    //ProductVariant
    PRODUCT_VARIANT_NOT_FOUNT(6001, "Không tìm thấy biến thể sản phẩm", HttpStatus.NOT_FOUND),
    OUT_OF_STOCK(6002, "Số lượng sản phẩm không đủ", HttpStatus.CONFLICT),

    //Cart
    CART_NOT_EXISTED(7001, "Giỏ hàng không tồn tại", HttpStatus.NOT_FOUND),

    //CartItem
    CART_ITEM_NOT_EXISTED(7009, "CartItem không tồn tại", HttpStatus.NOT_FOUND),

    //Address
    ADDRESS_NOT_EXISTED(7111, "Địa chỉ không tồn tại", HttpStatus.NOT_FOUND),

    //Discount
    DISCOUNT_NOT_EXISTED(7222, "Mã giảm giá không tồn tại", HttpStatus.NOT_FOUND),
    DISCOUNT_INVALID(7333, "Mã giảm giá không hợp lệ", HttpStatus.CONFLICT),

    //Order
    ORDER_NOT_EXISTED(7444, "Đơn hàng không tồn tại", HttpStatus.NOT_FOUND),

    //Payment
    PAYMENT_NOT_EXISTED(7555, "Thông tin thanh toán không tồn tại", HttpStatus.NOT_FOUND),

    //Review
    REVIEW_NOT_EXISTED(7666, "Đánh giá không tồn tại", HttpStatus.NOT_FOUND),

    //Authentication
    UNAUTHENTICATED(8001, "Chưa xác thực", HttpStatus.UNAUTHORIZED),
    UNAUTHORIZED(8002, "Bạn không có quyền truy cập", HttpStatus.FORBIDDEN),
    INVALID_TOKEN(8, "Token không hợp lệ hoặc đã bị hỏng", HttpStatus.UNAUTHORIZED),
    INVALID_CREDENTIALS(8004, "Tên đăng nhập hoặc mật khẩu không chính xác", HttpStatus.UNAUTHORIZED),

    //Validation
    INVALID_KEY(9001, "Invalid message key", HttpStatus.BAD_REQUEST),
    CANNOT_DELETE_ADMIN(8001, "Không thể xóa ADMIN", HttpStatus.FORBIDDEN),

    //Other
    SESSION_NOT_FOUND(10001, "Không thấy Session", HttpStatus.NOT_FOUND)
    ;

    private int code;
    private String message;
    private HttpStatusCode statusCode;

    ErrorCode(int code, String message, HttpStatusCode statusCode) {
        this.code = code;
        this.message = message;
        this.statusCode = statusCode;
    }
}
