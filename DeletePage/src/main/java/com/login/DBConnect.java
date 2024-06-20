package com.login;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
		
		private static String url = "jdbc:mysql://127.0.0.1:3306/cusdb";
		private static String userName = "root";
		private static String password = "12345";
		private static Connection con;

		public static Connection getConnection() {
			
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				
				con = DriverManager.getConnection(url, userName, password);
				
			}
			catch (Exception e) {
				System.out.println("Database connection is not success!!!");
			}
			
			return con;
		}
}



