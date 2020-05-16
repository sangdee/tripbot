package com.capstone.tripbot.web.controller;

import com.capstone.tripbot.web.model.User;
import com.capstone.tripbot.web.repository.UserRepository;
import com.capstone.tripbot.web.service.EncryptService;
import com.capstone.tripbot.web.service.SessionService;
import com.capstone.tripbot.web.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @author : Sangji Lee
 * @when : 2020-05-09 오후 4:59
 * @homepage : https://github.com/sangji11
 * <p>
 * service : business logic
 * controller : presentation logic
 */
@Controller
@AllArgsConstructor
public class UserController {
    private UserService userService;
    private EncryptService encryptService;
    private SessionService sessionService;


    @RequestMapping("/sign_in.do")
    public String signIn(User user) {
        user = encryptService.encrypt(user);
        if (userService.singIn(user)) {
            user = userService.read(user);
            sessionService.store("user", user);
            return "redirect:/";
        } else return "redirect:/views/user/sign_in.jsp";
    }

    @RequestMapping("/sign_up.do")
    public String signUp(User user) {
        boolean isSuccess = userService.checkDuplicate(user);
        if (!userService.isEmpty(user) && isSuccess) {
            user = encryptService.encrypt(user);
            userService.save(user);
        } else {
            return "redirect:/views/user/sign_up.jsp";
        }
        return "redirect:/views/user/sign_in.jsp";
    }

    @RequestMapping("/logout")
    public String logout() {
        sessionService.remove("user");
        return "redirect:/";
    }

    @RequestMapping("/user_update.do")
    public String update(User user, User updateUser) {
        userService.read(updateUser);
        user.update(updateUser);
        userService.save(user);
        sessionService.store("user",user);
        return "redirect:/";
    }

    @RequestMapping("/update")
    public String updateForm() {
        return "redirect:/views/user/user_modi.jsp";
    }

}
