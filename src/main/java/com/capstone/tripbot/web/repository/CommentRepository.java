package com.capstone.tripbot.web.repository;

import com.capstone.tripbot.web.model.Board;
import com.capstone.tripbot.web.model.Comment;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CommentRepository extends JpaRepository<Comment, Long> {
    List<Comment> findByCourseNo(long CourseNo);
}
