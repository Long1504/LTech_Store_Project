package com.techstore.controller;

import com.techstore.dto.request.ChatRequest;
import com.techstore.dto.response.ApiResponse;
import com.techstore.dto.response.ChatResponse;
import com.techstore.service.ChatService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/chats")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class ChatController {
    private final ChatService chatService;

    @PostMapping()
    public ApiResponse<String> chat(@RequestBody ChatRequest request, HttpSession session) {
        return ApiResponse.<String>builder()
                .result(chatService.chat(request, session))
                .build();
    }

    @GetMapping("/history")
    public ApiResponse<List<ChatResponse>> history(HttpSession session) {
        return ApiResponse.<List<ChatResponse>>builder()
                .result(chatService.getConversation(session))
                .build();
    }
}
