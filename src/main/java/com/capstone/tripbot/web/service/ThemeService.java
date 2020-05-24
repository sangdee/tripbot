package com.capstone.tripbot.web.service;

import com.capstone.tripbot.web.model.Theme;
import com.capstone.tripbot.web.repository.ThemeRepository;
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
public class ThemeService {

    private ThemeRepository repository;

    public List<Theme> allRead() {
        return (List<Theme>) repository.findAll();
    }

    public long count() {return repository.count();}


    public Theme idRead(long input) {
        return repository.findById(input).orElse(null);

    }
}
