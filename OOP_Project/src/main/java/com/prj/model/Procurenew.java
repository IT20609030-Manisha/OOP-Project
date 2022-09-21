package com.prj.model;

/*
 * 
 * Procurenew class
 */
public class Procurenew {

	private int referenceNo;
	private String description;
	private int quantity;
	private String date;
	
	/*
	 * 
	 * Constructor
	 */
	public Procurenew(int referenceNo, String description, int quantity, String date) {
		super();
		this.referenceNo = referenceNo;
		this.description = description;
		this.quantity = quantity;
		this.date = date;
	}

	/*
	 * 
	 * return reference no
	 */
	public int getReferenceNo() {
		return referenceNo;
	}


	/**
	 * 
	 * @return description
	 */
	public String getdescription() {
		return description;
	}


	/*
	 * 
	 * return quantity 
	 * need to be supply
	 */
	public int getQuantity() {
		return quantity;
	}


	/*
	 * 
	 * return closing date for the procurement
	 */
	public String getDate() {
		return date;
	}
	
}
