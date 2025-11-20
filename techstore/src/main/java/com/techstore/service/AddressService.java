package com.techstore.service;

import com.techstore.dto.request.AddressRequest;
import com.techstore.dto.response.AddressResponse;
import com.techstore.entity.Address;
import com.techstore.entity.User;
import com.techstore.exception.AppException;
import com.techstore.exception.ErrorCode;
import com.techstore.mapper.AddressMapper;
import com.techstore.repository.AddressRepository;
import com.techstore.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AddressService {
    private final UserRepository userRepository;
    private final AddressRepository addressRepository;

    private final AddressMapper addressMapper;

    public AddressResponse createAddress(AddressRequest request) {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        Address address = addressMapper.toAddress(request);
        address.setUser(user);

        boolean hasDefault = addressRepository.existsByUserAndIsDefaultTrue(user);
        if(!hasDefault) {
            address.setIsDefault(true);
        }
        else {
            address.setIsDefault(false);
        }

        address = addressRepository.save(address);

        return addressMapper.toAddressResponse(address);
    }

    public List<AddressResponse> getAllAddresses() {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        List<Address> addresses = addressRepository.findAllByUser(user);

        return addresses.stream()
                .map(address -> addressMapper.toAddressResponse(address))
                .toList();
    }

    public AddressResponse getDefaultAddress() {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        Address address = addressRepository.findByUserAndIsDefaultTrue(user);

        if (address != null) {
            return addressMapper.toAddressResponse(address);
        } else {
            throw new AppException(ErrorCode.ADDRESS_NOT_EXISTED);
        }
    }

    public AddressResponse setDefaultAddress(String addressId) {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        Address address = addressRepository.findById(addressId)
                .orElseThrow(() -> new AppException(ErrorCode.ADDRESS_NOT_EXISTED));

        if(!address.getUser().equals(user))
            throw new AppException(ErrorCode.UNAUTHORIZED);

        List<Address> addresses = addressRepository.findAllByUser(user);
        addresses.forEach(adr -> {
            if(Boolean.TRUE.equals(adr.getIsDefault()))
                adr.setIsDefault(false);
        });

        address.setIsDefault(true);

        addressRepository.saveAll(addresses);

        return addressMapper.toAddressResponse(addressRepository.save(address));
    }

    public void deleteAddress(String addressId) {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        Address address = addressRepository.findById(addressId)
                .orElseThrow(() -> new AppException(ErrorCode.ADDRESS_NOT_EXISTED));

        if(!address.getUser().equals(user))
            throw new AppException(ErrorCode.UNAUTHORIZED);

        boolean wasDefault = Boolean.TRUE.equals(address.getIsDefault());
        addressRepository.delete(address);

        if(wasDefault) {
            // Lấy danh sách địa chỉ còn lại
            List<Address> remaining = addressRepository.findAllByUser(user);
            if(!remaining.isEmpty()) {
                // Đặt địa chỉ đầu tiên làm mặc định
                Address first = remaining.get(0);
                first.setIsDefault(true);
                addressRepository.save(first);
            }
        }
    }

    public AddressResponse updateAddress(String addressId, AddressRequest request) {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        Address address = addressRepository.findById(addressId)
                .orElseThrow(() -> new AppException(ErrorCode.ADDRESS_NOT_EXISTED));

        if(!address.getUser().equals(user))
            throw new AppException(ErrorCode.UNAUTHORIZED);

        address.setAddressType(request.getAddressType());
        address.setRecipientName(request.getRecipientName());
        address.setRecipientPhone(request.getRecipientPhone());
        address.setCity(request.getCity());
        address.setDistrict(request.getDistrict());
        address.setWard(request.getWard());
        address.setDetailAddress(request.getDetailAddress());

        // Nếu muốn sửa có thể đặt mặc định từ request (tùy logic)
        if(Boolean.TRUE.equals(request.getIsDefault())) {
            List<Address> addresses = addressRepository.findAllByUser(user);
            addresses.forEach(adr -> adr.setIsDefault(false)); // reset
            address.setIsDefault(true);
            addressRepository.saveAll(addresses);
        }

        address = addressRepository.save(address);

        return addressMapper.toAddressResponse(address);
    }


}
