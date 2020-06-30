package com.capstone.tripbot.web.repository;

import com.capstone.tripbot.web.model.ImgFile;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImgFileRepository extends JpaRepository<ImgFile,Long> {
    ImgFile findByBno(Long bno);

}
