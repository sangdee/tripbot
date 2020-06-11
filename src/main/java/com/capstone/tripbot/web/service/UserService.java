package com.capstone.tripbot.web.service;

import com.capstone.tripbot.web.model.User;
import com.capstone.tripbot.web.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;


/**
 * @author : Sangji Lee
 * @when : 2020-05-09 오후 9:53
 * @homepage : https://github.com/sangji11
 */
@Service
@AllArgsConstructor
public class UserService {

    private UserRepository repository;

    public User read(User input) {
        return repository.findById(input.getEmail()).orElse(null);
    }
    public void save(User user) {
        repository.save(user);
    }
    public boolean singIn(User user) {
        User u = read(user);
        return u != null && u.getPw().equals(user.getPw());
    }
    public boolean notDuplicate(User user) {
        return read(user) == null;
    }
    public boolean isEmpty(User user) {
        return empty(user.getEmail()) || empty(user.getName()) || empty(user.getPw());
    }
    private boolean empty(String s) {
        return s == null || s.replaceAll(" ", "").equals("");
    }

}
