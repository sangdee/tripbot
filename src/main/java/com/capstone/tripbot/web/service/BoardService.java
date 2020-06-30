package com.capstone.tripbot.web.service;

import com.capstone.tripbot.web.model.Board;


import com.capstone.tripbot.web.model.Course;
import com.capstone.tripbot.web.repository.BoardRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
@AllArgsConstructor
public class BoardService {

    private BoardRepository repository;

    public Board read(long bno) {
        return repository.findById(bno).orElse(null);
    }

    public List<Board> readAll(long courseNo) {
        return  repository.findByCourseNo(courseNo);

    } public List<Board> readAll2() {
        return  repository.findAll();
    }

    public void save(Board board) {
        repository.save(board);
    }

    public void delete(long bno) {
        repository.delete(read(bno));
    }

    public void update(Board board){
        Board bd = read(board.getBno());
        bd.setFno(board.getFno());
        bd.setSubject(board.getSubject());
        bd.setContent(board.getContent());
        save(bd);
    }


}