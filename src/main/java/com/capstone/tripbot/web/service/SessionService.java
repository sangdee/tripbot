package com.capstone.tripbot.web.service;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

/**
 * @author : Sangji Lee
 * @when : 2020-05-14 오전 12:03
 * @homepage : https://github.com/sangji11
 */
@Service
@AllArgsConstructor
public class SessionService {

    private final HttpSession session;


    public void store(String key, Object val) {
        session.setAttribute(key, val);
        session.setMaxInactiveInterval(60 * 60);
    }

    public Object read(String key) {
        return session.getAttribute(key);
    }

    public void remove(String key) {
        session.removeAttribute(key);
    }

    public void invalidate() {
        session.invalidate();
    }


}
