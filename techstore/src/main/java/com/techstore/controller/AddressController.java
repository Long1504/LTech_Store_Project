package com.techstore.controller;

import com.techstore.dto.request.AddressRequest;
import com.techstore.dto.response.AddressResponse;
import com.techstore.dto.response.ApiResponse;
import com.techstore.service.AddressService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/addresses")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class AddressController {
    private final AddressService addressService;

    @PostMapping()
    public ApiResponse<AddressResponse> createAddress(@RequestBody AddressRequest request) {
        return ApiResponse.<AddressResponse>builder()
                .message("Thêm địa chỉ thành công!")
                .result(addressService.createAddress(request))
                .build();
    }

    @GetMapping
    public ApiResponse<List<AddressResponse>> getAllAddresses() {
        return ApiResponse.<List<AddressResponse>>builder()
                .result(addressService.getAllAddresses())
                .build();
    }

    @GetMapping("/default")
    public ApiResponse<AddressResponse> getDefaultAddress() {
        return ApiResponse.<AddressResponse>builder()
                .result(addressService.getDefaultAddress())
                .build();
    }

    @PutMapping("/{addressId}/default")
    public ApiResponse<AddressResponse> setDefaultAddress(@PathVariable String addressId) {
        return ApiResponse.<AddressResponse>builder()
                .message("Đã thay đổi địa chỉ mặc định!")
                .result(addressService.setDefaultAddress(addressId))
                .build();
    }

    @PutMapping("/{addressId}")
    public ApiResponse<AddressResponse> updateAddress(@PathVariable String addressId, @RequestBody AddressRequest request) {
        return ApiResponse.<AddressResponse>builder()
                .message("Cập nhật địa chỉ thành công!")
                .result(addressService.updateAddress(addressId, request))
                .build();
    }

    @DeleteMapping("{addressId}")
    public ApiResponse<AddressResponse> deleteAddress(@PathVariable String addressId) {
        addressService.deleteAddress(addressId);
        return ApiResponse.<AddressResponse>builder()
                .message("Xóa thành công")
                .build();
    }
}
