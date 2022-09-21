package com.payment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.prj.util.*;

public class PaymentDBUtill {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Payment> Validate (int PaymentID) {
		
		
		ArrayList<Payment> pay = new ArrayList <> ();
		
		
		try {
			
			con = DBConnect.getConnection();
			
			stmt = con.createStatement();
					
			String sql = "Select*from payment Where Payment_ID = '"+PaymentID+"' ";

			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				
				int Payment_ID = rs.getInt (1);
				String Card_Number = rs.getString (2);
				String Expiry_Date = rs.getString (3);
				String First_Name = rs.getString (4);
				String Last_Name = rs.getString (5);
				int CVV = rs.getInt (6);
				
				Payment P = new Payment (Payment_ID, Card_Number, Expiry_Date, First_Name, Last_Name, CVV);
				pay.add(P);
				
				}
			}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return pay;
	}

		public static boolean insertPay (String Card_Number, String Expiry_Date, String First_Name, String Last_Name, int CVV) {
		boolean isSuccess = false;
		
		

				try {
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					String sql = "insert into payment values (0, '"+Card_Number+"' ,'"+Expiry_Date+"','"+First_Name+"','"+Last_Name+"','"+CVV+"')";
					int rs = stmt.executeUpdate(sql);
					
					if (rs > 0) {
						isSuccess = true;
						
					} else
							isSuccess = false;
				
				}
				catch (Exception e) {
					e.printStackTrace();
				}
				
				return isSuccess;
		}


	public static boolean UpdatePayment (int Payment_ID, String Card_Number, String Expiry_Date, String First_Name, String Last_Name, int CVV) {
		boolean isSuccess=false;
	try {

		con = DBConnect.getConnection();
		stmt = con.createStatement();

		String sql = "UPDATE Payment set Card_Number = '"+Card_Number+"' , Expiry_Date = '"+Expiry_Date+"' , First_Name = '"+First_Name+"' , Last_Name = '"+Last_Name+"', CVV = '"+CVV+"'"+ "Where Payment_ID = '"+Payment_ID+"'";                                       
				
	
		int rs = stmt.executeUpdate(sql);

		if (rs > 0) {
		isSuccess = true;
		}
		else {
		isSuccess = false;
		}
		}
		catch (Exception e) {

		e.printStackTrace();
		}

		return isSuccess;
		}

	
	
	
	
	
	

	public static List<Payment> getpaymenttDetails (int Payment_ID){

		ArrayList<Payment> pay = new ArrayList<>();

		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();

		String sql = "SELECT * FROM payment WHERE Payment_ID = '"+Payment_ID+"'";
		rs = stmt.executeQuery(sql);

		while (rs.next()) {
		int payment_ID = rs.getInt(1);
		String Card_Number = rs.getString(2);
		String Expiry_Date = rs.getString(3);
		String First_Name = rs.getString(4);
		String Last_name = rs.getString(5);
		int CVV = rs.getInt(6);

		Payment P1 = new Payment (payment_ID, Card_Number, Expiry_Date, First_Name, Last_name, CVV);

		pay.add(P1);
		}
		}
		catch (Exception e) {
		e.printStackTrace();
		}

		return pay;
		}
		


public static boolean deletePayment(int Payid) {
	
boolean isSuccess=false;

try {
con = DBConnect.getConnection();
stmt = con.createStatement();
String sql = "delete from payment where Payment_ID = '"+Payid+"'";
int rs = stmt.executeUpdate(sql);
if (rs > 0) {
isSuccess = true;
}
else {
isSuccess = false;
}
}
catch (Exception e) {
e.printStackTrace();
}
return isSuccess;
}
}




