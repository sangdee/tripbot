package com.capstone.tripbot.web.repository;

import com.capstone.tripbot.web.model.Chat;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author : Sangji Lee
 * @see : https://github.com/sangji11
 * @since : 2020-06-12 오전 12:04
 */
public interface ChatRepository extends JpaRepository<Chat, Long> {
    List<Chat> findByEmail(String email);
}
