package com.capstone.tripbot.web.service;

import com.capstone.tripbot.web.model.ThemeBoard;
import com.capstone.tripbot.web.repository.ThemeBoardRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author : Sangji Lee
 * @when : 2020-05-22 오후 11:41
 * @homepage : https://github.com/sangji11
 */

@Service
@AllArgsConstructor
public class ThemeBoardService {

    private ThemeBoardRepository repository;

    public List<ThemeBoard> allRead() {
        return (List<ThemeBoard>) repository.findAll();
    }

    public long count() {return repository.count();}


    public ThemeBoard idRead(long input) {
        return repository.findById(input).orElse(null);

    }
}
