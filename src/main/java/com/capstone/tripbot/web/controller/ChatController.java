package com.capstone.tripbot.web.controller;

import com.capstone.tripbot.web.model.Chat;
import com.capstone.tripbot.web.scenario.ScenarioStore;
import com.capstone.tripbot.web.service.ChatService;
import com.capstone.tripbot.web.service.ScenarioService;
import com.capstone.tripbot.web.service.SessionService;
import lombok.AllArgsConstructor;
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
    private ScenarioService scenarioService;
    private static int CURRENT_STATE = 1;

    // 0 : 비정상
    // 1 : 정상
    @RequestMapping("/chat_content.do")
    public String chatContent(Chat chat, Model model) throws IOException {
        chat.setChatDate(chatService.encoding(Long.parseLong(chat.getChatDate())));
        chatService.save(chat);
        List<Chat> chatInfo = chatService.showChat(chat.getEmail());
        model.addAttribute("chat", chatInfo);
        String chatContent = chat.getChatContent();

        if (CURRENT_STATE == 0) {
            // 이전 상황에 실패
            CURRENT_STATE = scenarioService.failScenario(chatContent);

        } else if (CURRENT_STATE == 1) {
            // 이전 상황에 성공
            CURRENT_STATE = scenarioService.successScenario(chatContent);

        }else{
            throw new IllegalStateException("illegal state");
        }
        model.addAttribute("answer",ScenarioStore.answer);
        // 모델로 ScenarioStore.answer 보내서 멘트침
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
