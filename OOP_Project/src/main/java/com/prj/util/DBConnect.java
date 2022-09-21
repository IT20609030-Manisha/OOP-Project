package com.prj.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static String url = "jdbc:mysql://localhost:3306/med_orderingdb" ; //database url
	private static String username = "root";  //database user name
	private static String password = "97MLK1234" ; //database password
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
			
		} catch(Exception e){
			System.out.println("Database connection is not successful!!!");
		}
		
		return con;
	}
}
