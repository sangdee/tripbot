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
@Table(name = "board")
@NoArgsConstructor
@AllArgsConstructor
public class Board {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10, nullable = false)
    private Long bno;

    @Column(length = 50, nullable = false)
    private String subject;

    @Column(length = 1024, nullable = false)
    private String content;

    @Column(length = 10, nullable = false)
    private Long courseNo;

    @Column(length = 10, nullable = true)
    private Long fno;
}

