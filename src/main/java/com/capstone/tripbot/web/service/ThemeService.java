package com.capstone.tripbot.web.service;

import com.capstone.tripbot.web.model.Theme;
import com.capstone.tripbot.web.repository.ThemeRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
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

    public long count() {
        return repository.count();
    }

    public List<Theme> choice(String input) {
        return repository.findByTheme(input);
    }

    public Theme idRead(long input) {
        return repository.findById(input).orElse(null);
    }

    public List<Theme> search(String input) {
        return repository.findByTitleContaining(input);
    }

    public List<Theme> findAll(Pageable pageable) {
        Page<Theme> page = repository.findAll(pageable);
        List<Theme> entities = page.getContent();
        return entities;
    }

    public Page<Theme> findPage(Pageable pageable) {
        return repository.findAll(pageable);
    }
}
