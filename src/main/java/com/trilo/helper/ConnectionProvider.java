package com.trilo.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {

	private static Connection con;
	public static Connection getConnection() {
		
		try {
			if(con==null) {
				//load the driver
				Class.forName("com.mysql.cj.jdbc.Driver");
				//create the connection
				con=DriverManager.getConnection("jdbc:mysql:///techblog", "root","root");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	} 
}
