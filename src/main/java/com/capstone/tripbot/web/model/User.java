package com.capstone.tripbot.web.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author : Sangji Lee
 * @when : 2020-05-09 오후 6:15
 * @homepage : https://github.com/sangji11
 * @GeneratedValue => auto increment
 */

@Data
@Builder
@Entity
@Table(name = "user")
@NoArgsConstructor
@AllArgsConstructor
public class User {

    @Id
    @Column(length = 30, nullable = false)
    private String email;

    @Column(length = 256, nullable = false)
    private String pw;

    @Column(length = 10, nullable = false)
    private String name;

    public void update(User updateUser) {
        this.email = updateUser.email;
        this.pw = updateUser.pw;
        this.name = updateUser.name;
    }
}
