package com.prj.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.prj.model.BIDnew;



public class BidDBUtil {
	/*
	 * Set connection , statement , resultset
	 */
	private static boolean Success = false;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	/**
	 * Insert Bid details
	 * Connect with BIDInsert.java
	 * 
	 * @param proid
	 * @param Supp_ID
	 * @param Unitprice
	 * @param SupplyQty
	 * @return
	 */
	public static boolean insertBid(int proid, String Supp_ID, double Unitprice, double SupplyQty) {
		
		boolean BidSuccess = false;
		
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into bid values(0, '"+proid+"', '"+Supp_ID+"', '"+Unitprice+"', '"+SupplyQty+"') ";
				
				int result = stmt.executeUpdate(sql);
				
				if (result > 0)
					BidSuccess = true;
				else
					BidSuccess = false;
			}
			catch(Exception e) {
				
				e.printStackTrace();
			}
			
			
		return BidSuccess;
	}
	
	
	
	/**
	 * Validate data
	 * 
	 * @param suppid
	 * @return a boolean
	 */
	public static boolean validate(String suppid) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from bid where SupplierID ='"+suppid+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				Success = true;
			} else {
				Success = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return Success;
	}
	
	
	/**
	 * 
	 * @param suppid
	 * @return bid details of bid table
	 */
	public static List<BIDnew> getBID(String suppid) {
			
			ArrayList<BIDnew> bid = new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
			
				String sql = "SELECT * FROM bid where SupplierID = '"+suppid+"'";
				
				//System.out.println(RefNo);
				rs = stmt.executeQuery(sql);
				
				while (rs.next()) {
					
					int id = rs.getInt(1);
					int proid = rs.getInt(2);
					String supID = rs.getString(3);
					Double uprice = rs.getDouble(4);
					Double qty = rs.getDouble(5);
					
					BIDnew bid_new = new BIDnew (id, proid, supID, uprice, qty);
					bid.add(bid_new);
	
				}
						
			}
			catch (Exception e) {
				
				e.printStackTrace();
			}
			
			return bid;
		
	}
	
	/**
	 * Update the bid details
	 * 
	 * @param BID_ID
	 * @param procid
	 * @param Supp_ID
	 * @param Unitprice
	 * @param SupplyQty
	 * 
	 * @return a boolean
	 */
	public static boolean updateBID(int BID_ID, int procid, String Supp_ID, double Unitprice, double SupplyQty) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE bid set UnitPrice = '"+Unitprice+"' , Quantity = '"+SupplyQty+"'" + "where SupplierID =  '"+Supp_ID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				Success = true;
			}
			else {
				Success = false;
			}				
		}
		catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return Success;
	}

	
	/**
	 * 
	 * @param suppid
	 * @return resultset
	 */
	public static List<BIDnew> getBidDetails (String suppid){
		
		ArrayList<BIDnew> bid = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM bid WHERE SupplierID = '"+suppid+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int Bidid = rs.getInt(1);
				int proid = rs.getInt(2);
				String suppID = rs.getString(3);
				double uprice = rs.getDouble(4);
				double qty = rs.getDouble(5);
				
				BIDnew bid_new = new BIDnew (Bidid, proid, suppID, uprice, qty);
				
				bid.add(bid_new);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return bid;
	}

	
	/**
	 * Delete bid data
	 * 
	 * @param suppid
	 * @return a boolean
	 */
	public static boolean deleteBid(String suppid) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from bid where SupplierID = '"+suppid+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				Success = true;
			}
			else {
				Success = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return Success;
		
	}
}
