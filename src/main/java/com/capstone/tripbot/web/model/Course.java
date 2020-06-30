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
@Table(name = "course")
@NoArgsConstructor
@AllArgsConstructor
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10, nullable = false)
    private Long courseNo;

    @Column(length = 50, nullable = false)
    private String subject;

    @Column(length = 20, nullable = false)
    private String writer;

    @Column(length = 256, nullable = false)
    private String content;

    @Column(length = 256, nullable = false)
    private String theme;


}

