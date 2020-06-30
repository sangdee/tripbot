package com.capstone.tripbot.web.controller;

import com.capstone.tripbot.web.model.Board;
import com.capstone.tripbot.web.model.Course;
import com.capstone.tripbot.web.model.ImgFile;
import com.capstone.tripbot.web.model.User;
import com.capstone.tripbot.web.service.BoardService;

import com.capstone.tripbot.web.service.CourseService;
import com.capstone.tripbot.web.service.ImgFileService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@AllArgsConstructor
public class CourseController {

    private CourseService courseService;
    private BoardService boardService;
    private ImgFileService imgFileService;

    @RequestMapping("/course_list")
    public String list(Model model) {
        List<Course> courses = courseService.readAll();
        List<Board> boards = boardService.readAll2();
        List<ImgFile> imgFiles = imgFileService.readAll();
        System.out.println(imgFiles);
        model.addAttribute("images",imgFiles);
        model.addAttribute("courses", courses);
        model.addAttribute("boards", boards);
        return "/views/course/course_list";
    }

    @RequestMapping("/course_first_write")
    public String firstWrite(Model model) {
        Course course = new Course();
        Course cs = courseService.tmpSave(course);
        List<Board> boards = boardService.readAll(course.getCourseNo());
        model.addAttribute("boards",boards);
        model.addAttribute("course",cs);
        return "/views/course/course_write";
    }

    @RequestMapping("/course_update/{courseNo}")
    public String firstWrite(@PathVariable long courseNo, Model model) {
        List<Board> boards = boardService.readAll(courseNo);
        List<ImgFile> imgFiles = imgFileService.readAll();
        model.addAttribute("course",courseService.read(courseNo));
        model.addAttribute("images",imgFiles);
        model.addAttribute("boards",boards);
        return "/views/course/course_write";
    }

    @RequestMapping("/course_write.do")
    public String write(Course course) {
        courseService.update(course);
        return "redirect:/course_note";

    }

    @RequestMapping("/course_detail/{courseNo}")
    public String detail(@PathVariable long courseNo, Model model) {
        Course course = courseService.read(courseNo);
        List<Board> boards = boardService.readAll(courseNo);
        List<ImgFile> imgFiles = imgFileService.readAll();
        model.addAttribute("images",imgFiles);
        model.addAttribute("course",course);
        model.addAttribute("boards",boards);
        return "/views/course/course_detail";

    }

    @RequestMapping("/course_note")
    public String course_note(Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        List<Course> courses = courseService.readMy(user.getName());
        List<Board> boards = boardService.readAll2();
        List<ImgFile> imgFiles = imgFileService.readAll();
        model.addAttribute("courses",courses);
        model.addAttribute("images",imgFiles);
        model.addAttribute("boards",boards);
        return "/views/add_note";

    }

    @RequestMapping("/course_delete/{courseNo}")
    public String delete(@PathVariable long courseNo) {
        courseService.delete(courseNo);
        return "redirect:/course_note";
    }


}