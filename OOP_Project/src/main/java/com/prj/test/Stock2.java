package com.prj.test;

public class Stock2 {


	private int isoNumber ;
	private String medicineName ;
	private String category;
	private double price ;
	private int quantity;
	private int expiryYear;
	private int expiryMonth;
	private String prescription;
	
	
	public Stock2(int isoNumber, String medicineName, String category, double price, int quantity, int expiryYear,int expiryMonth, String prescription) {
		super();
		this.isoNumber = isoNumber;
		this.medicineName = medicineName;
		this.category = category;
		this.price = price;
		this.quantity = quantity;
		this.expiryYear = expiryYear;
		this.expiryMonth = expiryMonth;
		this.prescription = prescription;
	}

	public Stock2(String medicineName, String category, double price)
	{
		this.medicineName = medicineName;
		this.category = category;
		this.price = price;
	}

	public int getIsoNumber() {
		return isoNumber;
	}

	public String getMedicineName() {
		return medicineName;
	}


	public String getCategory() {
		return category;
	}


	public double getPrice() {
		return price;
	}


	public int getQuantity() {
		return quantity;
	}


	public int getExpiryYear() {
		return expiryYear;
	}


	public int getExpiryMonth() {
		return expiryMonth;
	}


	public String getPrescription() {
		return prescription;
	}

	

}


