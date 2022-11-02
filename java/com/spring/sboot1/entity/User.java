package com.spring.sboot1.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
@Entity
public class User {
	@Id
	private String UserId;			//user id
	
	private String FirstName;	// user first name
	 
	private String LastName;	// user last name
	
	private Date DOB;			// user date of birth
	 
	private String EmailId;		//user email id
	
	private String MblNo;		//user mobile number
	
	private double Balance;		//user double balance
	
	private String Password;	//user password
	
	private String Adress;		//user address
	
	//private User UserR;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public User(String userId, String firstName, String lastName, Date dOB, String emailId, String mblNo, double balance,
			String password, String adress) {
		super();
		UserId = userId;
		FirstName = firstName;
		LastName = lastName;
		DOB = dOB;
		EmailId = emailId;
		MblNo = mblNo;
		Balance = balance;
		Password = password;
		Adress = adress;
		
	}


	// getters and setters of user Id
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	// getters and setters first name
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	// getters and setters last name
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	// getters and setters date of birth
	public Date getDOB() {
		return DOB;
	}
	public void setDOB(Date dOB) {
		DOB = dOB;
	}
	// getters and setters emailid
	public String getEmailId() {
		return EmailId;
	}
	public void setEmailId(String emailId) {
		EmailId = emailId;
	}
	// getters and setters mobile number
	public String getMblNo() {
		return MblNo;
	}
	public void setMblNo(String mblNo) {
		MblNo = mblNo;
	}
	// getters and setters of balance
	public double getBalance() {
		return Balance;
	}
	public void setBalance(double balance) {
		Balance = balance;
	}
	// getters and setters of password
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	// getters and setters fof address
	public String getAdress() {
		return Adress;
	}
	public void setAdress(String adress) {
		Adress = adress;
	}
	//to string for user
	@Override
	public String toString() {
		return "User [UserId=" + UserId + ", FirstName=" + FirstName + ", LastName=" + LastName + ", DOB=" + DOB
				+ ", EmailId=" + EmailId + ", MblNo=" + MblNo + ", Balance=" + Balance + ", Password=" + Password
				+ ", Adress=" + Adress + "]";
	}
	
}
