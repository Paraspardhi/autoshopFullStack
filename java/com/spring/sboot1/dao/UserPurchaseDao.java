package com.spring.sboot1.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import com.spring.sboot1.entity.UserPurchase;

public interface UserPurchaseDao extends JpaRepository<UserPurchase,Integer> {

}
