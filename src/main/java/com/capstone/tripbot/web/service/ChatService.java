package com.capstone.tripbot.web.service;

import com.capstone.tripbot.web.model.Chat;
import com.capstone.tripbot.web.repository.ChatRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * @author : Sangji Lee
 * @see : https://github.com/sangji11
 * @since : 2020-06-12 오전 12:04
 */
@Service
@AllArgsConstructor
public class ChatService {
    private ChatRepository repository;

    public void save(Chat chat) {
        repository.save(chat);
    }

    public List<Chat> showChat(String email) {
        return repository.findByEmail(email);
    }

    public List<Chat> saveList(Chat chat) {
        return (List<Chat>) repository.save(chat);

    }

    public String encoding(long chatDate) {
        Date date = new Date();
        date.setTime(chatDate);
        return date.toString();
    }

    public void sessionCheck(String session) {

    }
}
