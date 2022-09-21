package com.prj.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.prj.model.Stock;

public class StockDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null ;
	private static Statement stmt = null ;
	private static ResultSet rs = null ;
	
	public static boolean insertStock(int isoNumber, String medicineName, String category, double price, int quantity,int expiryYear, int expiryMonth, String prescription) {
		
		boolean isSuccess = false ;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into stock values ('"+isoNumber+"','"+medicineName+"','"+category+"','"+price+"','"+quantity+"', '"+expiryYear+"', '"+expiryMonth+"', '"+prescription+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true ;
			}
			else {
				isSuccess = false ;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}//end of insertStock method
	
	
	public static boolean validate(int isoNum) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from stock where isoNumber='"+isoNum+"'" ;
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true ;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}//end of validate method
	
	
	public static List<Stock> getMedicineDetails(int isoNum){
		
		ArrayList<Stock> stock = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from stock where isoNumber='"+isoNum+"'" ;
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int iso = rs.getInt(1);
				String mName = rs.getString(2);
				String mcat = rs.getString(3);
				double mprice = rs.getDouble(4);
				int mqty = rs.getInt(5);
				int mexpYear = rs.getInt(6);
				int mexpMonth = rs.getInt(7);
				String pres = rs.getString(8);
				
				Stock st = new Stock(iso, mName, mcat, mprice, mqty, mexpYear, mexpMonth,pres);
				stock.add(st);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return stock ;
		
	}//end of getMedicineDetails method
	
	
	public static boolean updateStock(int isoNum, String medicineName, String cat, double pri, int quant,int expYear, int expMonth, String prescript) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update stock set isoNumber='"+isoNum+"', medName='"+medicineName+"', category='"+cat+"', price='"+pri+"', quantity='"+quant+"', expiryYear='"+expYear+"', expiryMonth='"+expMonth+"', prescription='"+prescript+"' "
							+ "where isoNumber='"+isoNum+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true ;
			}
			else {
				isSuccess = false ;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess ;
	}//end of updateStock method
	
	public static boolean deleteStock(int isoNum) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from stock where isoNumber='"+isoNum+"'" ;
			int result = stmt.executeUpdate(sql);
			
			if(result > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}//end of deleteStock method
	
	public static List<Stock> CheckExpiringMedicine(int year, int month){
		
		ArrayList<Stock> stock = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from stock where expiryYear='"+year+"' and expiryMonth='"+month+"'" ;
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int Iso = rs.getInt(1);
				String Mname = rs.getString(2);
				String Mcat = rs.getString(3);
				double Mprice = rs.getDouble(4);
				int Mqty = rs.getInt(5);
				int MexpYear = rs.getInt(6);
				int MexpMonth = rs.getInt(7);
				String Mpres = rs.getString(8);
				
				Stock st = new Stock(Iso,Mname,Mcat,Mprice,Mqty,MexpYear,MexpMonth,Mpres );
				stock.add(st);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return stock;
	}
	
	public static List<Stock> DisplayOutStockdetails(){
		
		ArrayList<Stock> stock = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from stock where quantity = 0" ;
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int Iso = rs.getInt(1);
				String Mname = rs.getString(2);
				String Mcat = rs.getString(3);
				double Mprice = rs.getDouble(4);
				int Mqty = rs.getInt(5);
				int MexpYear = rs.getInt(6);
				int MexpMonth = rs.getInt(7);
				String Mpres = rs.getString(8);
				
				Stock st = new Stock(Iso,Mname,Mcat,Mprice,Mqty,MexpYear,MexpMonth,Mpres );
				stock.add(st);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return stock;
	}
	
	
public static List<Stock> ViewStockdetails(){
		
		ArrayList<Stock> stock = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from stock" ;
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int Iso = rs.getInt(1);
				String Mname = rs.getString(2);
				String Mcat = rs.getString(3);
				double Mprice = rs.getDouble(4);
				int Mqty = rs.getInt(5);
				int MexpYear = rs.getInt(6);
				int MexpMonth = rs.getInt(7);
				String Mpres = rs.getString(8);
				
				Stock st = new Stock(Iso,Mname,Mcat,Mprice,Mqty,MexpYear,MexpMonth,Mpres );
				stock.add(st);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return stock;
	}

}//end of class
