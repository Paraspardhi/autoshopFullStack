package com.spring.sboot1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.sboot1.entity.User;
import com.spring.sboot1.entity.UserPurchase;
import com.spring.sboot1.service.ProductService;
import com.spring.sboot1.service.UserService;
@Controller
public class UserController {
	@Autowired
	private UserService us;
	
	@Autowired
	private ProductService ps;
	
	@RequestMapping("")
	public String getHome() {		//home page of autoshop
		return "home.jsp";
	}
	
	
	@RequestMapping("dashboard")
	public ModelAndView getDashboard(String UserId) {	
		ModelAndView mvc = new ModelAndView("Dashboard.jsp");//home page of autoshop
		mvc.addObject("user", us.viewUser(UserId));
		return mvc;
	}
	
	@RequestMapping("login")		//user login
	public ModelAndView getProductHome1(String UserId, String password){
		ModelAndView mvc = new ModelAndView();
		String s = us.Userlogin(UserId, password);
		if(s.equals("admin")) {
			mvc.addObject("name", "ADMIN");
			mvc.setViewName("index.jsp");
		}
		else if(s.equals("dashboard")) {
			mvc.setViewName("Dashboard.jsp");
			mvc.addObject("user", us.viewUser(UserId));
		}
		else {
			mvc.addObject("status", "error");
			mvc.setViewName("login.jsp");
		}
			
		return mvc;
	}
	
	@RequestMapping("userregister")		//method for user registration
	@ResponseBody
	public String UserRegister(User u)
	{
		return us.UserRegister(u);
	}

	
	/*@RequestMapping("purchaseProduct")		//method for purchasing product
	@ResponseBody
	public String purchase(UserPurchase up) {
		return us.purchaseProduct(up);
	}*/
	@RequestMapping("purchaseProduct")		//method for purchasing product
	@ResponseBody
	public String purchaseProduct( int pid,String UserId,int quantity) {
		return us.purchaseProduct(pid,UserId,quantity);
	}
	
	@RequestMapping("servicejsp")				//method for getting list of purchased item
	public ModelAndView getService(String UserId) {
		ModelAndView mav = new ModelAndView("service.jsp");
		mav.addObject("user", us.viewUser(UserId));
		
		return mav;
	}
	
	@RequestMapping("aboutjsp")				//method for getting list of purchased item
	public ModelAndView getAbout(String UserId) {
		ModelAndView mav = new ModelAndView("about.jsp");
		mav.addObject("user", us.viewUser(UserId));
		return mav;
	}
	@RequestMapping("enginejsp")				//method for getting list of purchased item
	public ModelAndView getengine(String UserId) {
		ModelAndView mav = new ModelAndView("engine.jsp");
		mav.addObject("user", us.viewUser(UserId));
		return mav;
	}
	@RequestMapping("headlampjsp")				//method for getting list of purchased item
	public ModelAndView getlight(String UserId) {
		ModelAndView mav = new ModelAndView("headlamp.jsp");
		mav.addObject("user", us.viewUser(UserId));
		return mav;
	}
	@RequestMapping("tyrejsp")				//method for getting list of purchased item
	public ModelAndView gettyre(String UserId) {
		ModelAndView mav = new ModelAndView("tyre.jsp");
		mav.addObject("user", us.viewUser(UserId));
		return mav;
	}
	@RequestMapping("interiorjsp")				//method for getting list of purchased item
	public ModelAndView getint(String UserId) {
		ModelAndView mav = new ModelAndView("interior.jsp");
		mav.addObject("user", us.viewUser(UserId));
		return mav;
	}
	
	
	@RequestMapping("buyproduct")
	public ModelAndView getpurchaseorder(int pid, String UserId) {
		ModelAndView mvc = new ModelAndView("buyproduct.jsp");
		mvc.addObject("user",us.viewUser(UserId));
		if(ps.checkStock(pid)>0) {
			mvc.addObject("flag",true);
			mvc.addObject("Product",ps.viewProduct(pid));
		}
		else {
			mvc.addObject("flag",false);
		}
	
		
		return mvc;
	}
	
	
	
	
	@RequestMapping("purchaseSingle")				//method for getting list of purchased item
	public ModelAndView getpurchaselist(int pid, String UserId) {
		ModelAndView mav = new ModelAndView("purchaseProduct.jsp");
		mav.addObject("user", us.viewUser(UserId));
		mav.addObject("product", ps.viewProduct(pid));
		return mav;
	}
	
	@RequestMapping("getOrder")				//method for getting list of purchased item
	public ModelAndView getpurchaselist(int userId) {
		ModelAndView mav = new ModelAndView("purchaselist.jsp");
		mav.addObject("userId", userId);
		mav.addObject("list", us.viewPurchaseList(userId));
		return mav;
	}
	@RequestMapping("addToCart")			// method for adding item to cart
	public ModelAndView AddToCart(int pid, String UserId ) {
		ModelAndView mvc = new ModelAndView("cart.jsp");
		us.addToCart(pid);
		mvc.addObject("user", us.viewUser(UserId));
		mvc.addObject("cart", us.ShowCart());
		return mvc;
	}
	
	@RequestMapping("removeFromCart")		// method for remove item from cart
	public ModelAndView removeFromCart(int pid, String UserId) {
		ModelAndView mvc = new ModelAndView("cart.jsp");
		us.removeFromCart(pid);
		mvc.addObject("user", us.viewUser(UserId));
		mvc.addObject("cart", us.ShowCart());
		return mvc;
		
	}
	
	@RequestMapping("search")			//method for view product
	public ModelAndView searchProducts(String UserId, String keyword){
		ModelAndView mvc = new ModelAndView("search.jsp");
		
		mvc.addObject("list", ps.searchByKeyword(keyword));
		mvc.addObject("type","list");
		mvc.addObject("user",us.viewUser(UserId));
		return mvc;
	}
	
	@RequestMapping("goPay")				//payment method for cart product
	@ResponseBody
	public String proceedPayment(String UserId) {
		return us.proceedPayment(UserId);
	}
	@RequestMapping("singlePay")			//payment method for single product
	@ResponseBody
	public String proceedSinglePayment(String UserId, int pid,int quantity) {
		return us.proceedSinglePayment(UserId, pid,quantity);
	}
	
	
	@RequestMapping("viewUser")						//method for view user
	public ModelAndView viewUser(String userId){
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("displayusers.jsp");
		mvc.addObject("user", us.viewUser(userId));
		mvc.addObject("type","single");
		return mvc;
	}
	
	@RequestMapping("viewAllUser")					//method for view all users

	public ModelAndView viewAllUser(){
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("displayusers.jsp");
		mvc.addObject("ulist", us.viewAllUser());
		mvc.addObject("type","list");
		return mvc;
	}
	
	@RequestMapping("updateuser")					//method for update user
	@ResponseBody
	public String updateUser(User u)
	{
		return us.updateUser(u);
	}
	
	@RequestMapping("deleteuser")					//method for delete user
	@ResponseBody
	public String deleteUser(String UserId){
		return us.deleteUser(UserId);
	}
}
