package com.prj.model;

public class newShopping {

	private int itemid;
	private String itemname;
	private double price;
	private int quantity;
	private double total;
	public int getItemid() {
		return itemid;
	}
	
	//private double subTotal;
	
	public newShopping(int itemid, String itemname, double price, int quantity, double total)
	{
		this.itemid = itemid;
		this.itemname = itemname;
		this.price = price;
		this.quantity = quantity;
		this.total = quantity * price;
		//this.subTotal = total + quantity * price;
	}
	
	public newShopping(int itemid, String itemname, double price, int quantity)
	{
		this.itemid = itemid;
		this.itemname = itemname;
		this.price = price;
		this.quantity = quantity;
		this.total = quantity * price;
		//this.subTotal = total + quantity * price;
	}
	
	public String getItemname() {
		return itemname;
	}
	
	public double getPrice() {
		return price;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public double getTotal() {
		return total;
	}
	
	public void calcTotal(double price, int quantity)
	{
		double total = 0;
		total = price * quantity;
		
	}
	
//	public void subTotal(double total, double price, int quantity)
//	{
//		double subTotal = 0;
//		subTotal = total + price * quantity;
//		
//	}
	
	
	
	
	
}
