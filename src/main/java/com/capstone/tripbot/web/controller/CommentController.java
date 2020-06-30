package com.capstone.tripbot.web.controller;

import com.capstone.tripbot.web.model.Comment;
import com.capstone.tripbot.web.service.CommentService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@AllArgsConstructor
public class CommentController {

    public CommentService commentService;

    @RequestMapping("/comment_list")
    @ResponseBody
    public List<Comment> list(@RequestParam long bno) {
        return commentService.readList(bno);

    }

    @RequestMapping("/comment_write")
    @ResponseBody
    public int write(Comment comment){
        commentService.wirte(comment);
        return 1;
    }

    @RequestMapping("/comment_delete/{cno}")
    @ResponseBody
    public int delete(@PathVariable long cno){
        commentService.delete(cno);
        return 1;
    }

    @RequestMapping("/comment_update")
    @ResponseBody
    public int update(@RequestParam long cno, @RequestParam String content){
        commentService.update(cno,content);
        return 1;

    }
}
