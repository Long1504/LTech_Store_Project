package com.techstore.controller;

import com.techstore.dto.response.ApiResponse;
import com.techstore.service.UploadImageFileService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Slf4j
@RestController
@RequestMapping("/api/upload")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class UploadFileController {
    private final UploadImageFileService uploadImageFileService;

    @PostMapping("/image")
    public ApiResponse<String> uploadImage(@RequestParam MultipartFile file) throws IOException {
        return ApiResponse.<String>builder()
                .message("Upload ảnh thành công")
                .result(uploadImageFileService.uploadImage(file))
                .build();
    }
}
