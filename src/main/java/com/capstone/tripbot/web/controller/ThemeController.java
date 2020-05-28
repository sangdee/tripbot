package com.capstone.tripbot.web.controller;

import com.capstone.tripbot.web.model.Theme;
import com.capstone.tripbot.web.service.SessionService;
import com.capstone.tripbot.web.service.ThemeService;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author : Sangji Lee
 * @when : 2020-05-22 오후 11:41
 * @homepage : https://github.com/sangji11
 */
@Controller
@AllArgsConstructor
public class ThemeController {
    private SessionService sessionService;
    private ThemeService themeService;

    @RequestMapping("/theme_list.do")
    public String list(Model model, @PageableDefault(sort = {"no"}, direction = Sort.Direction.DESC, size = 3) Pageable pageable) {
        model.addAttribute("list", themeService.findPage(pageable));
        model.addAttribute("count", themeService.count());
        sessionService.store("uri","");

        return "views/theme_list";
    }

    @RequestMapping("/theme_detail.do")
    public String detail(Theme theme, long no, Model model) {
        model.addAttribute("themeData", themeService.idRead(no));

        return "views/theme_detail";
    }

    @RequestMapping("/theme_choice.do")
    public String choice(String theme, Model model, @PageableDefault(sort = {"no"}, direction = Sort.Direction.DESC, size = 3) Pageable pageable) {
        model.addAttribute("list", themeService.choicePage(theme, pageable));
        model.addAttribute("count", themeService.countTheme(theme));
        sessionService.store("uri", "theme=" + theme + "&");

        return "views/theme_list";
    }

    @RequestMapping("/search.do")
    public String search(String keyword, Model model, @PageableDefault(sort = {"no"}, direction = Sort.Direction.DESC, size = 3) Pageable pageable) {

        model.addAttribute("list", themeService.search(keyword, pageable));
        model.addAttribute("count", themeService.countSearch(keyword));
        sessionService.store("uri", "keyword=" + keyword + "&");

        return "views/theme_list";
    }
}
