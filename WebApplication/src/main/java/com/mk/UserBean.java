package com.mk;

import java.io.Serializable;

public class UserBean implements Serializable
{
	public static final long serialVersionUID=1L;
	private String name;
	private String email;
	private String phone_no;
	private String password;
	private int userid;
	public UserBean(String name, String email, String phone_no, String password) 
	{
		this.name=name;
		this.email=email;
		this.phone_no=phone_no;
		this.password=password;
	}
	
	public UserBean() 
	{
		
	}


	public UserBean(String email,String password) 
	{
		this.email=email;
		this.password=password;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	
	
	
		


	


}
