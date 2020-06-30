package com.capstone.tripbot.web.repository;

import com.capstone.tripbot.web.model.Board;
import com.capstone.tripbot.web.model.Comment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface BoardRepository extends JpaRepository<Board,Long> {
    List<Board> findByCourseNo(Long courseNo);
}