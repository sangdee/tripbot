package com.capstone.tripbot.web.service;

import com.capstone.tripbot.web.model.Chat;
import com.capstone.tripbot.web.repository.ChatRepository;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.jsoup.Jsoup;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
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
    public static String intent = null;

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

    public String request(String text) throws IOException {
        return Jsoup.connect("http://121.186.20.224:9893" +
                "/request/" + utf8(text))
                .timeout(600000)
                .ignoreContentType(true)
                .execute()
                .body();
    }

    public String fillInfro(String intent, String text) throws IOException {
        return Jsoup.connect("http://121.186.20.224:9893" +
                "/fill_info/" + utf8(intent) + "/" + utf8(text))
                .timeout(600000)
                .ignoreContentType(true)
                .execute()
                .body();
    }


    public String utf8(String text) throws UnsupportedEncodingException {
        return URLEncoder.encode(text, "UTF-8").replace("+", "%20");
    }
}
