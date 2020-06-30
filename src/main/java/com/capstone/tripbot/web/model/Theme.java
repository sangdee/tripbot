package com.capstone.tripbot.web.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * @author : Sangji Lee
 * @when : 2020-05-22 오후 11:17
 * @homepage : https://github.com/sangji11
 */

@Data
@Builder
@Entity
@Table(name = "theme")
@NoArgsConstructor
@AllArgsConstructor
public class Theme {
    @Id
    @GeneratedValue
    @Column(length = 3, nullable = false)
    private Long no;

    @Column(length = 200, nullable = false)
    private String title;

    @Column(length = 10, nullable = false)
    private String location;

    @Column(length = 10000, nullable = false)
    private String content;

    @Column
    private Timestamp timestamp;

    @Column(nullable = false)
    private String imageUrl;

    @Column(length = 10, nullable = false)
    private String theme;


}
