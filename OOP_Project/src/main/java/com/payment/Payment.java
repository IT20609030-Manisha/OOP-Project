package com.payment;

public class Payment {

	private int Payment_ID;
	private String Card_Number;
	private String Expiry_Date;
	private String First_Name;
	private String Last_Name;
	private int CVV;
	
	public Payment(int payment_ID, String card_Number, String expiry_Date, String first_Name, String last_Name, int cvv) 
	{
		
		this.Payment_ID  = payment_ID;
		this.Card_Number = card_Number;
		this.Expiry_Date = expiry_Date;
		this.First_Name = first_Name;
		this.Last_Name = last_Name;
		this.CVV = cvv ;
	}

	public int getPayment_ID() {
		return Payment_ID;
	}

	

	public String getCard_Number() {
		return Card_Number;
	}

	

	public int getCVV() {
		return CVV;
	}

	

	public String getExpiry_Date() {
		return Expiry_Date;
	}

	

	public String getFirst_Name() {
		return First_Name;
	}

	

	public String getLast_Name() {
		return Last_Name;
	}	
}
