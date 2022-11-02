package com.spring.sboot1.service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.sboot1.dao.ProductDao;
import com.spring.sboot1.dao.UserDao;
import com.spring.sboot1.dao.UserPurchaseDao;
import com.spring.sboot1.entity.Product;
import com.spring.sboot1.entity.User;
import com.spring.sboot1.entity.UserPurchase;

@Service
public class UserService {
	@Autowired
	private UserDao udao;
	@Autowired
	private ProductDao pdao;
	@Autowired
	private UserPurchaseDao updao;

	private List<Product> cart = new ArrayList<Product>();
	 
	private Map<Product, Integer> cart1 = new LinkedHashMap<Product,Integer>();

	// method for register new user to autoshop
	public String UserRegister(User u) {
		try {
			udao.save(u);
			return "User Register successfully";
		} catch (Exception e) {
			return "something wrong";
		}
	}

	// method for view user
	public User viewUser(String UserId) {
		try {
			User u = udao.findById(UserId).orElse(null);
			if (u != null) {
				return u;
			}
			return null;
		} catch (Exception e) {
			return null;
		}
	}

	// method to view all users list
	public List<User> viewAllUser() {
		try {
			return udao.findAll();
		} catch (Exception e) {
			return null;
		}
	}

	// method for updating user
	public String updateUser(User u) {
		try {
			for (User u1 : udao.findAll()) {
				if (u1.getUserId() == u.getUserId()) {
					udao.deleteById(u.getUserId());
				}
			}
			udao.save(u);
			return "User updated";
		} catch (Exception e) {
			return "something wrong";
		}
	}

	// method for deleting user
	public String deleteUser(String UserId) {
		try {
			for (User u : udao.findAll()) {
				if (UserId.equals(u.getUserId())) {
					udao.deleteById(UserId);
					return "User Deleted";
				}
			}
			return "User unavailable";
		} catch (Exception e) {
			return "something wrong";
		}
	}

	// method for user login to autoshop
	public String Userlogin(String UserId, String password) {
		try {
			if ((UserId.equals("71715")  && (password.equalsIgnoreCase("71715")))) {
				return "admin";
			} else {
				for (User u : udao.findAll()) {
					if ((UserId.equals(u.getUserId())) && (password.equals(u.getPassword()))) {
						return "dashboard";
					}
				}
			}
			return "login";
		} catch (Exception e) {
			return "something wrong";
		}
	}

	// method for purchasing product
	/*public String purchaseProduct(UserPurchase up) {
		try {
			Product p = pdao.findById(up.getProductid()).orElse(null);
			User u = udao.findById(up.getUserId()).orElse(null);
			System.out.println(p);

			System.out.println(u);
			up.setPcost(up.getPcost() + p.getPcost());
			if (p != null && u != null) {
				if( p.getPquantity()>0) {
				System.out.println("In purchase");
				updao.save(up);
				return "Purchase Completed";
			}
			else
			{
				pdao.increaseStock(up.getProductid());
				return "Try after sometime...";
			}
		}
			return "Invalid Input";
		} 
	catch (Exception e){
			return "something wrong";
		}
	}*/
	
	
	public String purchaseProduct(int pid, String UserId, int quantity) {
		try {
		Product p = pdao.findById(pid).orElse(null);
		User u = udao.findById(UserId).orElse(null);
		if (p != null && u != null ) {
			if( p.getPquantity()>=quantity) {
				updao.save(new UserPurchase(pid, UserId, (p.getPcost() + 500)));
				pdao.Userpurchase(pid, quantity);
				return "Purchase Completed";
			}
			else
			{
				pdao.increaseStock(pid);
				return "Try after sometime...";
			}
		}
		return "Invalid Input";
	}
		catch(Exception e) {
			return "something went wrong";
		}
	}

	// method for view the list of purchased product
	public List<UserPurchase> viewPurchaseList(int uid) {
		try {
			ArrayList<UserPurchase> plist = new ArrayList<UserPurchase>();
			if (uid == 71715) {
				return updao.findAll();
			}
			for (UserPurchase up : updao.findAll()) {
				if (up.getUserId().equals(uid)) {
					plist.add(up);

				}
			}
			return plist;
		} catch (Exception e) {
			return null;
		}
	}

	// method for add product to cart
	public String addToCart(int pid) {
		try {
			boolean flag = false;
			for(Product p: cart1.keySet()) {
				if(p.getPid() == pid) {
					flag = true;
					break;
				}
			}
			Product p = pdao.findById(pid).orElse(null);
			if (p != null && !flag) {
				//cart.add(p);
				cart1.put(p, 1);
				return "Product Added To Cart";
			} else {
				return "Invalid Product";
			}
		} catch (Exception e) {
			return "something wrong";
		}
	}

	// method for remove product from cart
	public String removeFromCart(int pid) {
		try {

			for (Product p1 : cart1.keySet()) {
				if (p1.getPid() == pid) {
					//cart.remove(p1);
					cart1.remove(p1);
					return "Product  Remove From Cart";
				}

			}

			return "Invalid Product";

		} catch (Exception e) {
			return "something wrong";
		}
	}

	// method for buy single product
	public String proceedSinglePayment(String UserId, int pid, int quantity) {
		try {
			Product p = pdao.findById(pid).orElse(null);

			if (p != null && p.getPquantity()>= quantity) {
				updao.save(new UserPurchase(p.getPid(), UserId, ((p.getPcost() * quantity) + 700)));
				return "Purchase Completed";
			} else {
				return "Product Invalid";
			}
		} catch (Exception e) {
			return "something wrong";

		}
	}

	// method for buying product from cart
	public String proceedPayment(String UserId) {
		try {
			/*
			 * for (Product p : cart) { updao.save(new UserPurchase(p.getPid(), UserId,
			 * p.getPcost() + 700));
			 * 
			 * }
			 */
			for(Product p: cart1.keySet()) {
				updao.save(new UserPurchase(p.getPid(), UserId, (cart1.get(p) * p.getPcost()) + 700));
			}
			return "Order Successfully";
		} catch (Exception e) {
			return "something wrong";
		}
	}

	// method for showing all product from cart
	public Map<Product,Integer> ShowCart() {
		try {
			System.out.println(cart);
			return cart1;
		} catch (Exception e) {
			return null;
		}
	}

}
