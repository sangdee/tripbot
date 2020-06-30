package com.capstone.tripbot.web.service;


import com.capstone.tripbot.web.model.ImgFile;
import com.capstone.tripbot.web.repository.ImgFileRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class ImgFileService {

    private ImgFileRepository repository;

    public ImgFile read(long fno) {
        return repository.findById(fno).orElse(null);
    }

    public List<ImgFile> readAll(){
        return repository.findAll();
    }
    public ImgFile readBno(Long bno){
       return repository.findByBno(bno);
    }

    public ImgFile save(String fileName, Long bno, Long courseNo) {
        ImgFile file = new ImgFile();
        file.setFilename(fileName);
        file.setBno(bno);
        file.setCourseNo(courseNo);
        return repository.save(file);
    }



}