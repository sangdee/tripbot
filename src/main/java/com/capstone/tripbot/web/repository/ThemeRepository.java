package com.capstone.tripbot.web.repository;

import com.capstone.tripbot.web.model.Theme;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * @author : Sangji Lee
 * @when : 2020-05-22 오후 11:40
 * @homepage : https://github.com/sangji11
 */
public interface ThemeRepository extends JpaRepository<Theme, Long> {
    Page<Theme> findByTheme(String s, Pageable pageable);
    Page<Theme> findByTitleContaining(String s, Pageable pageable);
    long countByTheme(String s);
    long countByTitleContaining(String s);
}
