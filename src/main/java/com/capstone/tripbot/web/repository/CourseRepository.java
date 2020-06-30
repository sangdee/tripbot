package com.capstone.tripbot.web.repository;

import com.capstone.tripbot.web.model.Course;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CourseRepository extends JpaRepository<Course,Long> {
     List<Course> findByWriter(String writer);
 }
