package com.capstone.tripbot.web.service;


import com.capstone.tripbot.web.model.Course;
import com.capstone.tripbot.web.repository.BoardRepository;
import com.capstone.tripbot.web.repository.CourseRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
@AllArgsConstructor
public class CourseService {

    private CourseRepository repository;

    public Course read(long courseNo) {
        return repository.findById(courseNo).orElse(null);
    }


    public List<Course> readAll() {
        return  repository.findAll();
    }

    public List<Course> readMy(String userName){return repository.findByWriter(userName);}

    public Course tmpSave(Course course) {
        course.setSubject(" ");
        course.setContent(" ");
        course.setWriter("test");
        course.setTheme(" ");
        save(course);
        return course;
    }

    public void save(Course course){
        repository.save(course);
    }

    public void delete(long courseNo) {
        repository.delete(read(courseNo));
    }

    public void update(Course course){
        Course cs = read(course.getCourseNo());
        cs.setWriter(course.getWriter());
        cs.setSubject(course.getSubject());
        cs.setContent(course.getContent());
        cs.setTheme(course.getTheme());

        save(cs);
    }


}