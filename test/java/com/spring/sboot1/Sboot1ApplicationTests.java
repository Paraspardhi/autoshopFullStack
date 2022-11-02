package com.spring.sboot1;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.sql.Date;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


import com.spring.sboot1.entity.Product;
import com.spring.sboot1.entity.User;
import com.spring.sboot1.entity.UserPurchase;
import com.spring.sboot1.service.ProductService;
import com.spring.sboot1.service.UserService;

@SpringBootTest
class Sboot1ApplicationTests {
	@Autowired
	UserService usvc;
	@Autowired
	ProductService psvc;

	@Test
	void contextLoads() {
	}
	@Test 
	public void addProductTest() {
		assertEquals("Product Added", psvc.addProduct(new Product(121,"hybrid tyre","wheels",6600.0,10,"tyre2.jpg")));
	}
	@Test 
	public void viewProductTest() {
		assertNotNull(psvc.viewProduct(101));
	}
	@Test 
	public void viewAllProductTest() {
		assertNotNull(psvc.viewAllProduct());
	}
	@Test 
	public void updateBookTest() {
		assertEquals("Product Updated", psvc.updateProduct(new Product(102,"tyre16","cartyre",7450.0,10,"tyre1.jpg")));
	}
	 @Test public void deleteProductTest1() {
		  assertEquals("Product Deleted",psvc.deleteProduct(101)); }
		 
		
		@Test 
		public void deleteProductTest2() {
			assertEquals("Product unavailable",psvc.deleteProduct(555));
		}
		@Test 
		public void UserRegisterTest() {
			assertEquals("User Register successfully", usvc.UserRegister(new User("122","priya","rahangdale",Date.valueOf("1998-08-10"),"priya@123","8596321402",100002.0,"priya","gondia")));
		}
		@Test 
		public void viewUserTest() {
			assertNotNull(usvc.viewUser("101"));
		}
		@Test 
		public void viewAllUserTest() {
			assertNotNull(usvc.viewAllUser());
		}
		@Test 
		public void updateUserTest() {
			assertEquals("User updated", usvc.updateUser(new User("555","riyaj","rahangdale",Date.valueOf("1998-08-10"),"riyaj@123","8596321402",10002.0,"priya","gondia")));
		}
		 @Test public void deleteUserTest1() {
			  assertEquals("User Deleted",usvc.deleteUser("103")); }
			 
			
			@Test 
			public void deleteUserTest2() {
				assertEquals("User unavailable",usvc.deleteUser("666"));
			}
	@Test 
	public void UserloginTest() {
		assertNotNull(usvc.Userlogin("prpardhi1234@gmail.com","123"));
	}
	@Test 
	public void purchaseProductTest() {
		assertNotNull(usvc.purchaseProduct(105, "555",10));
	}
	
	@Test 
	public void addToCartTest() {
		assertNotNull(usvc.addToCart(109));
	}
	@Test 
	public void removeFromCartTest() {
		assertNotNull(usvc.addToCart(109));
	}
	@Test 
	public void proceedSinglePaymentTest() {
		assertNotNull(usvc.proceedSinglePayment("555", 106, 5));
	}
	@Test 
	public void proceedPaymentTest() {
		assertNotNull(usvc.proceedPayment("555"));
	}
	@Test 
	public void ShowCartTest() {
		assertNotNull(usvc.ShowCart());
	}
	
	
}
