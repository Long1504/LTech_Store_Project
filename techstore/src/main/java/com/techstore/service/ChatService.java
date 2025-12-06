package com.techstore.service;

import com.techstore.dto.request.ChatRequest;
import com.techstore.dto.response.ChatResponse;
import com.techstore.repository.ChatRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.client.advisor.MessageChatMemoryAdvisor;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.ai.chat.memory.MessageWindowChatMemory;
import org.springframework.ai.chat.memory.repository.jdbc.JdbcChatMemoryRepository;
import org.springframework.ai.chat.messages.SystemMessage;
import org.springframework.ai.chat.messages.UserMessage;
import org.springframework.ai.chat.prompt.Prompt;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChatService {
    private final ChatClient chatClient;
    private final JdbcChatMemoryRepository jdbcChatMemoryRepository;

    private final ChatRepository chatRepository;

    public ChatService(ChatClient.Builder builder,
                       JdbcChatMemoryRepository jdbcChatMemoryRepository,
                       ChatRepository chatRepository) {

        this.jdbcChatMemoryRepository = jdbcChatMemoryRepository;
        this.chatRepository = chatRepository;

        ChatMemory chatMemory = MessageWindowChatMemory.builder()
                .chatMemoryRepository(jdbcChatMemoryRepository)
                .maxMessages(50) // Mặc định là 20 (lưu lịch sử chat vào db để chatbot nhớ)
                .build();

        chatClient = builder
                .defaultAdvisors(MessageChatMemoryAdvisor.builder(chatMemory).build())
                .build();
    }

    public String chat(ChatRequest request, HttpSession session) {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();

        String conversationId = (username != null && !"anonymousUser".equals(username))
                ? "user-" + username
                : "guest-" + session.getId().substring(0, 8);


        SystemMessage systemMessage = new SystemMessage("""
            Bạn là trợ lý AI của LTech Store - một cửa hàng bán sản phẩm công nghệ (Điện thoại, Laptop, Phụ kiện)
            Bạn nên trả lời câu hỏi của người dùng một cách hài hước
            Bạn nên trả lời câu hỏi của người dùng một cách ngắn gọn
            Khi liệt kê bạn nên tránh dùng dấu "*" vì nó hơi khó nhìn
            Bạn rất hâm mộ cô Trần Phương Nhung - một giảng viên nhiệt huyết đồng thời là ca sĩ với giọng hát vô cùng tuyệt vời
        """);

        UserMessage userMessage = new UserMessage(request.getMessage());

        Prompt prompt = new Prompt(systemMessage, userMessage);

        return chatClient
                .prompt(prompt)
                .advisors(advisor -> advisor.param(ChatMemory.CONVERSATION_ID, conversationId))
                .call()
                .content();
    }

    public List<ChatResponse> getConversation(HttpSession session) {

        String username = SecurityContextHolder.getContext().getAuthentication().getName();

        String conversationId = (username != null && !"anonymousUser".equals(username))
                ? "user-" + username
                : "guest-" + session.getId().substring(0, 8);

        return chatRepository.findByConversationId(conversationId);
    }


}
