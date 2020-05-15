package com.capstone.tripbot.web.service;

import com.capstone.tripbot.web.model.User;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.security.MessageDigest;

/**
 * @author : Sangji Lee
 * @when : 2020-05-10 오전 4:22
 * @homepage : https://github.com/sangji11
 */

@Service
public class EncryptService {

    public User encrypt(User input) {
        return User.builder()
                .email(input.getEmail())
                .pw(SHA256(input.getPw()))
                .name(input.getName())
                .build();
    }

    private String SHA256(String message) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(message.getBytes());
            byte[] byteData = md.digest();
            StringBuilder hexString = new StringBuilder();
            for (byte aByteData : byteData) {
                String hex = Integer.toHexString(0xff & aByteData);
                if (hex.length() == 1) hexString.append('0');
                hexString.append(hex);
            }
            return hexString.toString();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException();
        }
    }
}
