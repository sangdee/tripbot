package com.capstone.tripbot.web.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * @author : Sangji Lee
 * @see : https://github.com/sangji11
 * @since : 2020-06-11 오후 11:55
 */
@Data
@Builder
@Entity
@Table(name = "chatbot")
@NoArgsConstructor
@AllArgsConstructor
public class Chat {
    @Id
    @GeneratedValue
    @Column(length = 3, nullable = false)
    private Long chatKey;

    @Column(length = 200, nullable = false)
    private String email;

    @Column(length = 1000, nullable = false)
    private String chatContent;
    @Column(length = 1000)
    private String chatSay;

    @Column
    private String chatDate;

    @Column
    private Boolean isUser;

}
