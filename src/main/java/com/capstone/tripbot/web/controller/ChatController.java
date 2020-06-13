package com.capstone.tripbot.web.controller;

import com.capstone.tripbot.web.model.Chat;
import com.capstone.tripbot.web.model.User;
import com.capstone.tripbot.web.service.ChatService;
import com.capstone.tripbot.web.service.SessionService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * @author : Sangji Lee
 * @see : https://github.com/sangji11
 * @since : 2020-06-12 오전 12:05
 */
@Controller
@AllArgsConstructor
public class ChatController {
    private ChatService chatService;
    private SessionService sessionService;

    @RequestMapping("/chat_content.do")
    public String chatContent(Chat chat, Model model) {
        chat.setChatDate(chatService.encoding(Long.parseLong(chat.getChatDate())));
        chatService.save(chat);
        List<Chat> chatInfo = chatService.showChat(chat.getEmail());
        model.addAttribute("chat", chatInfo);
        String chatContent = chat.getChatContent();
        return "views/chat_bot";
    }

    @RequestMapping("/chat_list.do")
    public String chatList(Model model) {
        String email = (String) sessionService.read("email");
        List<Chat> chatInfo = chatService.showChat(email);
        model.addAttribute("chat", chatInfo);
        return "views/chat_bot";
    }

}
