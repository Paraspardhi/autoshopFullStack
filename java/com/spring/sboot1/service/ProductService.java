package com.spring.sboot1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sboot1.dao.ProductDao;
import com.spring.sboot1.entity.Product;



@Service
public class ProductService {

	@Autowired
	private ProductDao pl;
	
	//method for add product 
	public String addProduct(Product p){
		
	try
	{
		p.setPquantity(10);
		pl.save(p);
		return "Product Added";
	}
	catch(Exception e) {
		return "something wrong";
	}
	}	
	//method for view product 
	public Product viewProduct(int pid)
	{
		try {
		Product p = pl.findById(pid).orElse(null);
		if(p!=null)
		{
			return p;
		}
		return null;
	}catch (Exception e) {
		return null;
	}
}
	//method for viewall product 
	public List<Product> viewAllProduct()
	{
		try {
		return pl.findAll();
	}catch (Exception e) {
		return null;
	}
}
	//method for update product 
	public String updateProduct(Product p){
		try
	{
		for(Product p1 : pl.findAll())
		{
			if(p1.getPid() == p.getPid())
			{
				pl.deleteById(p.getPid());
			}
		}
		pl.save(p);
		return "Product updated";
	}
		catch(Exception e) {
			return "something wrong";
		}
	}
	//method for delete product 
	public String deleteProduct(int pid) {
		try {
		for(Product p : pl.findAll())
		{
			if(pid == p.getPid())
			{
				pl.deleteById(pid);
				return "Product Deleted";
			}
		}
		return "Product unavailable";
	}
	catch(Exception e) {
		return "something wrong";
	}
}
	public int  checkStock( int pid) {
		try {
		Product p = pl.findById(pid).orElse(null);
		if(p!=null) {
			return p.getPquantity();
		}
		return -1;
	}
		catch(Exception e) {
			return -1;
		}
	}
	public String addStock(int pid, int pquantity) {
		try {
			Product p = pl.findById(pid).orElse(null);
		if(p!=null) {
			p.setPquantity(pquantity + p.getPquantity());
			return "Stock got added successfully...";
		}
		return "Product unavailable";
	}

		catch(Exception e) {
			return "something went wrong";
		}
	}
	public List<Product> searchByKeyword(String keyword) {
		
		return pl.searchByWord(keyword);
	}
}
