package com.swiggy.utility;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class HelperConnection 
{	
	public static Connection openConnection() 
	{
		Connection con = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://192.168.57.5:3306/NT005", "deepak.tiwari","8XR$^$(F");
			System.out.println("Connection Establish..");
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return con;
	}
	
	public static void closeConnection(Connection con)
	{
		if (con != null) 
		{
			try
			{
				System.out.println("Connection Closed..");
				con.close();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
	}
}
