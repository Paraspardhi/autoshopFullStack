package com.spring.sboot1.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Product {
	@Id
	private int pid;		//product Id
	private String pname;	//product name
	private String ptype;	//product type
	private double pcost;	//product cost
	private int pquantity;	//product quantity
	private String pimg;	//product image
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(int pid, String pname, String ptype, double pcost,int pquantity,String pimg) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.ptype = ptype;
		this.pcost = pcost;
		this.pquantity = pquantity;
		this.pimg = pimg;
	}
	public int getPquantity() {
		return pquantity;
	}
	public void setPquantity(int pquantity) {
		this.pquantity = pquantity;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	// getters and setters of product Id
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	// getters and setters of product name
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}// getters and setters of product type
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	// getters and setters of product cost
	public double getPcost() {
		return pcost;
	}
	public void setPcost(double pcost) {
		this.pcost = pcost;
	}
	// toString method for product
	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", ptype=" + ptype + ", pcost=" + pcost + ", pquantity="
				+ pquantity + ", pimg=" + pimg + "]";
	}
	
	

}
