package com.capstone.tripbot.web.controller;

import com.capstone.tripbot.web.model.Board;
import com.capstone.tripbot.web.model.Course;
import com.capstone.tripbot.web.model.ImgFile;
import com.capstone.tripbot.web.service.BoardService;

import com.capstone.tripbot.web.service.CourseService;
import com.capstone.tripbot.web.service.ImgFileService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@AllArgsConstructor
public class BoardController {

    private BoardService boardService;
    private CourseService courseService;
    private ImgFileService fileService;

    @RequestMapping("/board_write/{courseNo}")
    public String write(@PathVariable long courseNo,Model model) {
        Course course = courseService.read(courseNo);
        model.addAttribute("course",course);
        return "/views/course/board_write";
    }


    @RequestMapping("/board_write.do/{courseNo}")
    public String writeDo(@PathVariable long courseNo, Board board, Model model, @RequestParam("file") MultipartFile file) throws IOException {
        boardService.save(board);
        if(!file.isEmpty()) {
            String sourceFileName = file.getOriginalFilename();
            String fileUrl = "D:/add/ver_final/src/main/webapp/views/uploadfiles/";
            File destinationFile = new File(fileUrl + sourceFileName);
            file.transferTo(destinationFile);
            ImgFile imgFile = fileService.save(sourceFileName, board.getBno(),courseNo);
            board.setFno(imgFile.getFno());
            boardService.update(board);
        }

        List<ImgFile> imgFiles = fileService.readAll();
        Course course = courseService.read(courseNo);
        List<Board> boards = boardService.readAll(courseNo);

        model.addAttribute("images",imgFiles);
        model.addAttribute("boards",boards);
        model.addAttribute("course",course);
        return "/views/course/course_write";
    }

    @RequestMapping("/board_delete/{boardNo}")
    public String delete(@PathVariable long boardNo,Model model) {
        Board board = boardService.read(boardNo);
        Course course = courseService.read(board.getCourseNo());
        boardService.delete(boardNo);
        List<ImgFile> imgFiles = fileService.readAll();
        List<Board> boards = boardService.readAll(course.getCourseNo());
        model.addAttribute("images",imgFiles);
        model.addAttribute("boards",boards);
        model.addAttribute("course",course);
        return "/views/course/course_write";
    }



}