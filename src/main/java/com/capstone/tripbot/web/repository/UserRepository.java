package com.capstone.tripbot.web.repository;

import com.capstone.tripbot.web.model.User;
import org.springframework.data.repository.CrudRepository;

/**
 * @author : Sangji Lee
 * @when : 2020-05-10 오전 4:02
 * @homepage : https://github.com/sangji11
 */
public interface UserRepository extends CrudRepository<User, String> {

}
