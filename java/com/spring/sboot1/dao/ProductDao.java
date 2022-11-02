package com.spring.sboot1.dao;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.spring.sboot1.entity.Product;
@Transactional
public interface ProductDao extends JpaRepository< Product,Integer>{
	@Modifying
	@Query("update Product p set p.pquantity = (p.pquantity + 10) where p.pid = ?1")
	void increaseStock(int pid);
	
	@Modifying
	@Query("update Product p set p.pquantity = (p.pquantity - ?2) where p.pid = ?1")
	void Userpurchase(int pid,int quantity);

	@Query("SELECT p FROM Product p WHERE CONCAT(p.pname, p.ptype) LIKE %?1%")
	 List<Product> searchByWord(String keyword);

}

