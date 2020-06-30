package com.capstone.tripbot.web.controller;

import com.capstone.tripbot.web.model.Chat;
import com.capstone.tripbot.web.service.ChatService;
import com.capstone.tripbot.web.service.SessionService;
import lombok.AllArgsConstructor;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
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

        if (chatService.intent != null) {
            try {
                String userInput = chat.getChatContent();
                String output = chatService.fillInfro(ChatService.intent, userInput);
                JSONObject jsonObject = new JSONObject(output);
                String state = jsonObject.getString("state");

                if (state.equals("SUCCESS")) {
                    String out = jsonObject.getString("answer");
                    ChatService.intent = null;
                    chat.setChatSay(out);
                    chatService.save(chat);
                } else if (state.equals("FALLBACK")) {
                    String out = "죄송합니다. 잘 못알아들었어요";
                    ChatService.intent = null;
                    chat.setChatSay(out);
                    chatService.save(chat);
                } else {
                    String out = "지역을 말씀해주세요";
                    ChatService.intent = jsonObject.getString("intent");
                    chat.setChatSay(out);
                    chatService.save(chat);
                }
            } catch (Exception e) {
            }
        } else {
            try {
                String userInput = chat.getChatContent();
                String output = chatService.request(userInput);
                JSONObject jsonObject = new JSONObject(output);
                String state = jsonObject.getString("state");

                if (state.equals("SUCCESS")) {
                    String out = jsonObject.getString("answer");

                    chat.setChatSay(out);
                    chatService.save(chat);

                } else if (state.equals("FALLBACK")) {
                    String out = "죄송합니다. 잘 못알아들었어요";

                    chat.setChatSay(out);
                    chatService.save(chat);
                } else {
                    String out = "지역을 말씀해주세요";
                    ChatService.intent = jsonObject.getString("intent");
                    chat.setChatSay(out);
                    chatService.save(chat);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        List<Chat> chatInfo = chatService.showChat(chat.getEmail());

        model.addAttribute("chat", chatInfo);
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
