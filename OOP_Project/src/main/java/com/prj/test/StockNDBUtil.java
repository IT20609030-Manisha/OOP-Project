package com.prj.test;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
//import java.sql.PreparedStatement;

import com.prj.util.AddShoppingCartDBUtil;
//import com.mysql.jdbc.Connection;
import com.prj.util.DBConnect;

public class StockNDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	//private static PreparedStatement pstm = null;
	private static boolean isSuccess;
	
	public static List<Stock2> display(int iso)
	{
		List<Stock2> stock2 = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from stock where isoNumber = '"+iso+"'";
			//PreparedStatement pstm = con.prepareStatement("select medName,category,price from stock where category ='"+cat+"'");
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int isoNum= rs.getInt(1);
				String medName = rs.getString(2);
				String medCat = rs.getString(3);
				Double medPrice = rs.getDouble(4);
				int quan = rs.getInt(5);
				int expYear = rs.getInt(6);
				int expMon = rs.getInt(7);
				String pres = rs.getString(8);
				
				Stock2 st2 = new Stock2(isoNum,medName,medCat,medPrice,quan,expYear,expMon,pres);
				stock2.add(st2);
				
				boolean result = AddShoppingCartDBUtil.insertShoppingCart(medName, medPrice);
				
				
				
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return stock2;
	}
	
	
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
		
	}

	public static boolean UpdateQuantity(int qty, String name) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update stock set quantity=quantity-'"+qty+"' where medName = '"+name+"'" ;
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
	}
}
