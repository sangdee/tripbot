package com.capstone.tripbot.web.controller;

import com.capstone.tripbot.web.model.Theme;
import com.capstone.tripbot.web.service.ThemeService;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;
import java.util.Collections;
import java.util.List;

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
    public String list(Model model, @PageableDefault(sort = {"no"}, direction = Sort.Direction.DESC, size = 3) Pageable pageable) {
//        List<Theme> list = themeService.allRead();
//        Collections.reverse(list);
        List<Theme> list = themeService.findAll(pageable);
        Page<Theme> page = themeService.findPage(pageable);
        long count = themeService.count();

        model.addAttribute("list", list);
        model.addAttribute("page", page);
//        model.addAttribute("list", list);
        model.addAttribute("count", count);


        return "views/theme_list";
    }

    @RequestMapping("/theme_detail.do")
    public String detail(Theme theme, long no, Model model) {
        theme = themeService.idRead(no);
        model.addAttribute("themeData", theme);
        return "views/theme_detail";
    }

    @RequestMapping("/theme_choice.do")
    public String choice(String theme, Model model) {
        List<Theme> list = themeService.choice(theme);
        long count = themeService.count();
        model.addAttribute("list", list);
        model.addAttribute("count", count);
        return "views/theme_list";
    }

    @RequestMapping("/search.do")
    public String search(String keyword, Model model) {
        List<Theme> list = themeService.search(keyword);
        long count = themeService.count();
        model.addAttribute("list", list);
        model.addAttribute("count", count);
        return "views/theme_list";
    }
}
