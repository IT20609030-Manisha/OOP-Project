package com.prj.util;

import java.util.ArrayList;
import java.util.List;


import com.prj.model.Procurenew;

import java.sql.*;

public class ProcurementDBUtil {
	
	/*
	 * Set connection , statement , resultset
	 */
	private static boolean Success = false;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	/*
	 * Insert data to the procurement table
	 * 
	 */
	public static boolean insertProcurement(int RefNo, String itemName, int quantity, String date ) {	
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "insert into procurement values ('"+RefNo+"', '"+itemName+"','"+quantity+"', '"+date+"')";
				int rs = stmt.executeUpdate(sql);
				
				if (rs > 0) {
					Success = true;
				}
				else 
					Success = false;	
			}
			catch(Exception e) {
				
				e.printStackTrace();
			}
		
		return Success;
	}
	
	
	/*
	 * validate data
	 * 
	 */
	public static boolean validate(String item) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from procurement where Description LIKE '%" + item + "%'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
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

	/*
	 * Select procurements 
	 * 
	 */
	public static List<Procurenew> getProcurement(String item) {
		
		ArrayList<Procurenew> procure = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
		
			String sql = "select * from procurement where Description LIKE '%" + item + "%'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				int Refno = rs.getInt(1);
				String itemName = rs.getString(2);
				int quantity = rs.getInt(3);
				String date = rs.getString(4);
				
				Procurenew pro_new = new Procurenew (Refno, itemName, quantity, date);
				procure.add(pro_new);

			}
					
		}
		catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return procure;
	}
	
	
		
	/*
	 * update procurement data
	 * 
	 */
		public static boolean updateProcurement(int refNo, String ItemName, int quantity, String bidclose) {
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "UPDATE procurement set Description = '"+ItemName+"' , Quantity = '"+quantity+"' , ClosingDate = '"+bidclose+"'" + "where ReferenceNo = '"+refNo+"'";
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
	
		
		/*
		 * select procurement details
		 * 
		 */
		public static List<Procurenew> getProcurementDetails (int RefNo){
			
			ArrayList<Procurenew> proc = new ArrayList<>();
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "SELECT * FROM procurement WHERE ReferenceNo = '"+RefNo+"'";
				rs = stmt.executeQuery(sql);
				
				while (rs.next()) {
					int refNo = rs.getInt(1);
					String item = rs.getString(2);
					int qty = rs.getInt(3);
					String dates = rs.getString(4);
					
					Procurenew procure = new Procurenew (refNo, item, qty, dates);
					
					proc.add(procure);
				}
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			
			return proc;
		}
	
	
		/*
		 * delete procurement
		 */
		public static boolean deleteProcure(int refNo) {
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "delete from procurement where ReferenceNo = '"+refNo+"'";
				
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
		
		
		/*
		 * Takes the list of procurements
		 * 
		 */
		public static List<Procurenew> ListProcure(){
			
			ArrayList<Procurenew> proc = new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from procurement" ;
				rs = stmt.executeQuery(sql);
				
				while (rs.next()) {
					int refNo = rs.getInt(1);
					String item = rs.getString(2);
					int qty = rs.getInt(3);
					String dates = rs.getString(4);
					
					Procurenew procure = new Procurenew (refNo, item, qty, dates);
					
					proc.add(procure);
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return proc;
		}
	
}
