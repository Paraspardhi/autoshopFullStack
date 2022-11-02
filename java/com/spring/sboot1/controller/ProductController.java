package com.spring.sboot1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.sboot1.entity.Product;
import com.spring.sboot1.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService ps;
	
	@RequestMapping("addproduct")
	@ResponseBody
	public String addProduct(Product p)		//method for add product
	{
		
		return ps.addProduct(p);
	}
	
	@RequestMapping("index")
											//mapping to login page
	public String getProductHome(){
		return "login.jsp";
	}
	
	
	
	@RequestMapping("viewproduct")			//method for view product
	public ModelAndView viewProduct(int pid){
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("display_product.jsp");
		mvc.addObject("prd", ps.viewProduct(pid));
		mvc.addObject("type","single");
		return mvc;
	}
	
	@RequestMapping("viewallproduct")			//method for view all product

	public ModelAndView viewAllProduct(){
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("display_product.jsp");
		mvc.addObject("plist", ps.viewAllProduct());
		mvc.addObject("type","list");
		return mvc;
	}
	
	@RequestMapping("updateproduct")			//method for update product
	@ResponseBody 
	public String updateProduct(Product p)
	{
		return ps.updateProduct(p);
	}
	
	@RequestMapping("deleteproduct")			//method for delete product
	@ResponseBody
	public String deleteProduct(int pid){
		return ps.deleteProduct(pid);
	}

}
