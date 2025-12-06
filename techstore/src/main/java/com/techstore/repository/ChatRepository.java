package com.techstore.repository;

import com.techstore.dto.response.ChatResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class ChatRepository {

    private final JdbcTemplate jdbcTemplate;

    public List<ChatResponse> findByConversationId(String conversationId) {

        String sql = """
            SELECT type, content
            FROM spring_ai_chat_memory
            WHERE conversation_id = ?
            ORDER BY timestamp ASC
        """;

        return jdbcTemplate.query(sql,
                (rs, rowNum) -> ChatResponse.builder()
                        .type(rs.getString("type"))
                        .content(rs.getString("content"))
                        .build(),
                conversationId
        );
    }
}