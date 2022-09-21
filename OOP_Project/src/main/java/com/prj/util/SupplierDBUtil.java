package com.prj.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.prj.model.Supplier;

public class SupplierDBUtil {
	
	/*
	 * Set connection , statement , resultset
	 */
	private static boolean Success = false;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	/*
	 * validate 
	 * 
	 */
	public static boolean validate(String uname, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM supplier where UserName = '"+uname+"' AND Password = '"+password+"' ";
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
	 * get supplier details
	 * 
	 */
	public static List<Supplier> getSupplier(String uname, String password) {
		
		ArrayList<Supplier> sup = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
		
			String sql = "SELECT * FROM supplier where UserName = '"+uname+"' AND Password = '"+password+"' ";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String phone = rs.getString(4);
				String email = rs.getString(5);
				String userU = rs.getString(6);
				String passU = rs.getString(7);

				
				Supplier sup_new = new Supplier (id, fname, lname, phone, email, userU, passU);
				sup.add(sup_new);

			}
					
		}
		catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return sup;
	}

	
		/*
		 * insert suppliers
		 * 
		 */
		public static boolean insertSupplier(String fname, String lname, String connum, String email, String uname, String password) {
				
				boolean isSuccess = false;
				
				try {
					
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					
					String sql = "INSERT INTO supplier VALUES (0, '"+fname+"', '"+lname+"', '"+connum+"', '"+email+"', '"+uname+"', '"+password+"' )";
					
					int rs = stmt.executeUpdate(sql);
					
					if (rs > 0) {
						isSuccess = true;
					}
					else {
						isSuccess = false;
					}
				}
				catch(Exception e) {
					
					e.printStackTrace();
				}
				
				return isSuccess;
					
			}
}

