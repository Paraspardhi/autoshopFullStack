package com.spring.sboot1.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.spring.sboot1.entity.User;

public interface UserDao extends JpaRepository<User,String>{
	 @Query("SELECT u FROM User u WHERE u.EmailId = ?1")
	public User findByEmail(String email);

}
