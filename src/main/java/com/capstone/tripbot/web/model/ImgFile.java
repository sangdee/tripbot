package com.capstone.tripbot.web.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;


@Data
@Builder
@Entity
@Table(name = "file")
@NoArgsConstructor
@AllArgsConstructor
public class ImgFile {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10, nullable = false)
    private Long fno;

    @Column(length = 200, nullable = false)
    private String filename;

    @Column(length = 10, nullable = false)
    private Long bno;

    @Column(length = 10, nullable = false)
    private Long courseNo;


}

