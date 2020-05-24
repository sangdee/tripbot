package com.capstone.tripbot.web.controller;

import com.capstone.tripbot.web.model.Theme;
import com.capstone.tripbot.web.service.ThemeService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Collections;

/**
 * @author : Sangji Lee
 * @when : 2020-05-22 오후 11:41
 * @homepage : https://github.com/sangji11
 */
@Controller
@AllArgsConstructor
public class ThemeController {
    private ThemeService themeService;

    @RequestMapping("/theme_list.do")
    public String list(Model model) {
        List<Theme> list = themeService.allRead();
        Collections.reverse(list);
        long count = themeService.count();
        model.addAttribute("list", list);
        model.addAttribute("count", count);


        return "views/theme_list";
    }

    @RequestMapping("/theme_detail.do")
    public String detail(Theme themeBoard, long no, Model model) {
        themeBoard = themeService.idRead(no);

        model.addAttribute("themeData",themeBoard);
        System.out.println(
                model.addAttribute("themeData",themeBoard));
        return "views/theme_detail";
    }
}
