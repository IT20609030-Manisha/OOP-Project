package com.prj.model;

public class Supplier {
	
	private int supplierid;
	private String fname;
	private String lname;
	private String phone;
	private String email;
	private String uname;
	private String password;
	
	/*
	 * Supplier constructor
	 */
	public Supplier(int supplierid, String fname, String lname, String phone, String email, String uname, String password) {
		
		this.supplierid = supplierid;
		this.fname = fname;
		this.lname = lname;
		this.phone = phone;
		this.email = email;
		this.uname = uname;
		this.password = password;
	}

	/*
	 * supplier id auto increment
	 * 
	 */
	public int getsupplierid() {
		return supplierid;
	}

	/*
	 * first name of the supplier
	 * 
	 */
	public String getFname() {
		return fname;
	}

	/*
	 * last name of the supplier
	 *
	 */
	public String getLname() {
		return lname;
	}

	/*
	 * telephone number of the supplier
	 * 
	 */
	public String getPhone() {
		return phone;
	}

	/*
	 * email of the supplier
	 * 
	 */
	public String getEmail() {
		return email;
	}

	/*
	 * username of the supplier
	 * 
	 */
	public String getUname() {
		return uname;
	}

	/*
	 * password
	 * 
	 */
	public String getPassword() {
		return password;
	}
	
}

