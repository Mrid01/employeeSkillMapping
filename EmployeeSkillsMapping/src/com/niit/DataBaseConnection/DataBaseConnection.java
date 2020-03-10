package com.niit.DataBaseConnection;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConnection {
	public static Connection getConnection()
	{
		
		
		 Connection con=null;
		 try {
			 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con= DriverManager.getConnection("jdbc:sqlserver://DESKTOP-229643L\\MSSQLSERVER; databaseName=Mrid_Workspace;user=sa;password=generation17");
		} catch (SQLException | ClassNotFoundException e) {
			
			e.printStackTrace();
		}
         System.out.println("connected to database success");
     

		
		return con;
		
	}
	
	
	
	
	
}
