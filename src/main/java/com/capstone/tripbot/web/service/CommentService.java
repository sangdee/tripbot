package com.capstone.tripbot.web.service;

import com.capstone.tripbot.web.model.Comment;
import com.capstone.tripbot.web.repository.CommentRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
@AllArgsConstructor
public class CommentService {
    CommentRepository commentRepository;

    public Comment read(long cno) {
        return commentRepository.findById(cno).orElse(null);
    }

    public List<Comment> readList(Long courseNo) {
        return commentRepository.findByCourseNo(courseNo);
    }

    public void wirte(Comment comment) {
        comment.setReg_date(new Date());
        commentRepository.save(comment);
    }

    public void delete(long cno) {
        commentRepository.delete(read(cno));
    }

    public void update(long cno, String content) {
        Comment c = read(cno);
        c.setContent(content);
        commentRepository.save(c);
    }


}
