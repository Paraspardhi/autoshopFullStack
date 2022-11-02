package com.spring.sboot1.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Purchase")
public class UserPurchase {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private int purchaseId;		//purchase id
	
	private int productid;		//product id
	
	private String userId;			//user id
	private double pcost;		//product cost
	public UserPurchase() {
		super();
		
	}
	public UserPurchase(int productid, String userId, double pcost) {
		super();
		this.productid = productid;
		this.userId = userId;
		this.pcost = pcost;
	}
	// getters and setters of purchase Id
	public int getPurchaseId() {
		return purchaseId;
	}
	public void setPurchaseId(int purchaseId) {
		this.purchaseId = purchaseId;
	}
	// getters and setters of product Id
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	// getters and setters of user Id
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	// getters and setters of product cost
	public double getPcost() {
		return pcost;
	}
	public void setPcost(double pcost) {
		this.pcost = pcost;
	}
	//toString method for getting data
	@Override
	public String toString() {
		return "UserPurchase [purchaseId=" + purchaseId + ", productid=" + productid + ", userId=" + userId + ", pcost="
				+ pcost + "]";
	}

}
