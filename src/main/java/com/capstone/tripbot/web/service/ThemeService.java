package com.capstone.tripbot.web.service;

import com.capstone.tripbot.web.model.Theme;
import com.capstone.tripbot.web.repository.ThemeRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

/**
 * @author : Sangji Lee
 * @when : 2020-05-22 오후 11:41
 * @homepage : https://github.com/sangji11
 */

@Service
@AllArgsConstructor
public class ThemeService {

    private ThemeRepository repository;
    public long count() {
        return repository.count();
    }
    public long countTheme(String theme){
        return repository.countByTheme(theme);
    }
    public long countSearch(String keyword){
        return repository.countByTitleContaining(keyword);
    }

    public Theme idRead(long input) {
        return repository.findById(input).orElse(null);
    }

    public Page<Theme> findPage(Pageable pageable) {
        return repository.findAll(pageable);
    }
    public Page<Theme> choicePage(String theme, Pageable pageable) {
        return repository.findByTheme(theme, pageable);
    }
    public Page<Theme> search(String input, Pageable pageable) {
        return repository.findByTitleContaining(input, pageable);
    }

}
