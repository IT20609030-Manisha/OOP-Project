package com.prj.model;

public class BIDnew {
	
	private int bid_id;
	private int pro_id;
	private String supp_id;
	private double unitprice;
	private double quantity;
	
	/*
	 * Constructor 
	 *
	 */
	public BIDnew(int bid_id, int pro_id, String supp_id, double unitprice, double quantity) {
		this.bid_id = bid_id;
		this.pro_id = pro_id;
		this.supp_id = supp_id;
		this.unitprice = unitprice;
		this.quantity = quantity;
	}

	/*
	 * return bid_id
	 */
	public int getBid_id() {
		return bid_id;
	}

	/*
	 * 
	 * return procurement_id
	 */
	public int getPro_id() {
		return pro_id;
	}
	
	/*
	 * return supplier id
	 */
	public String getSupp_id() {
		return supp_id;
	}



	public double getUnitprice() {
		return unitprice;
	}

	
	/*
	 * 
	 * return quantity
	 */
	public double getQuantity() {
		return quantity;
	}	

}
