package com.prj.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class StaffDBUtil {
	
	private static boolean isSuccess ;
	private static Connection con = null ;
	private static Statement stmt = null;
	private static ResultSet rs = null ;
	
	public static boolean validateStaff(int id , String pwd) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from staff where staffId='"+id+"' and password='"+pwd+"'";    
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
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
