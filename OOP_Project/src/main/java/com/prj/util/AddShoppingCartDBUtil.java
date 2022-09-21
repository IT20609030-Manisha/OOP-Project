package com.prj.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.prj.model.newShopping;

import com.prj.test.Stock2;


public class AddShoppingCartDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	//private static PreparedStatement pstm = null;
	private static boolean isSuccess;

public boolean AddShoppingCart(int ItemID, String ItemName) throws SQLException {
		
		DBConnect dbc = new DBConnect();
		Connection con = dbc.getConnection();
		
		String query = "insert into shoppingcart(itemid,itemname) values(?,?)";
		
		PreparedStatement ps = con.prepareStatement(query);
		
		ps.setInt(1, ItemID);
		ps.setString(2, ItemName);
		
		return ps.execute();
		
	}

public static boolean insertShoppingCart(String itemName, Double price)
{
	
    isSuccess = false;
    
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "insert into shoppingcart values(0,'"+itemName+"','"+price+"', 1)" ;
		int rs = stmt.executeUpdate(sql);
		
		if(rs>0)
		{
			isSuccess= true;
		}
		else
		{
			isSuccess = false;
		}
	}

	catch(Exception e){
		e.printStackTrace();
	}
	
	return isSuccess;
}

public static List<newShopping> display()
{
	ArrayList<newShopping> newS = new ArrayList<>();
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "select * from shoppingcart ";
		//PreparedStatement pstm = con.prepareStatement("select medName,category,price from stock where category ='"+cat+"'");
		
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int itmid= rs.getInt(1);
			String itmnm = rs.getString(2);
			Double pri= rs.getDouble(3);
			int quant = rs.getInt(4);
			
			newShopping sc = new newShopping(itmid, itmnm, pri, quant);
			newS.add(sc);
			
		
		}
		
	}
	catch(Exception e){
		e.printStackTrace();
		
	}
	return newS;
}

public static boolean updateShoppingCart(  int quantity, int itemid ) {
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		PreparedStatement pstmt = null;
		
		//String sql = "update shoppingcart set quantity=?  where itemid="+itemid;
		pstmt=con.prepareStatement("update shoppingcart set quantity=? where itemid=?");
		pstmt.setInt(1, quantity);
		pstmt.setInt(2, itemid);
		
		pstmt.executeUpdate();
		
		con.close();
		//int rs = stmt.executeUpdate(sql);
		
//		if(rs > 0) {
//			isSuccess= true;
//		}
//		else {
//			isSuccess = false;
//		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
}

public static boolean deleteShoppingCart(int itemid) {
	
//	int convItemId = Integer.parseInt(itemid);
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "delete from shoppingcart where itemid='"+itemid+"'";
		
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
	return isSuccess;
}

}
