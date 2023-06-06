package com.swiggy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.swiggy.utility.HelperConnection;

public class registerDao 
{
	public static boolean registerUser(ArrayList<Object>li) 
	{
		Connection connection = null;
		ResultSet generatedKeys = null;
		String qry = "INSERT INTO Users(user_name,user_email,user_phone,user_address,user_zipcode,user_password) VALUES(?,?,?,?,?,?)";
		try 
		{
			connection = HelperConnection.openConnection();
			PreparedStatement stmt_user = connection.prepareStatement(qry,Statement.RETURN_GENERATED_KEYS);
			stmt_user.setString(1, (String) li.get(0));
			stmt_user.setString(2, (String) li.get(1));
			stmt_user.setString(3, (String) li.get(2));
			stmt_user.setString(4, (String) li.get(6));
			stmt_user.setString(5, (String) li.get(7));
			stmt_user.setString(6, (String) li.get(8));
			 stmt_user.executeUpdate();
			
			generatedKeys = stmt_user.getGeneratedKeys();
	        int user_id = -1;
	        if (generatedKeys.next()) {
	        	user_id = generatedKeys.getInt(1);
	        }
	            		
			String qry_country = "INSERT INTO Country(country_name,user_id) VALUES(?,?)";

			PreparedStatement stmt_country = connection.prepareStatement(qry_country,Statement.RETURN_GENERATED_KEYS);
			stmt_country.setString(1, (String) li.get(3));
			stmt_country.setInt(2, user_id);
			stmt_country.executeUpdate();
			
		     generatedKeys = stmt_country.getGeneratedKeys();
	          int country_id = -1;
	           if (generatedKeys.next()) {
	        	   country_id = generatedKeys.getInt(1);
	           }
			String qry_state = "INSERT INTO State(state_name,country_id) VALUES(?,?)";

			PreparedStatement stmt_state = connection.prepareStatement(qry_state,Statement.RETURN_GENERATED_KEYS);
			stmt_state.setString(1, (String) li.get(4));
			stmt_state.setInt(2, country_id);
			stmt_state.executeUpdate();
			
			generatedKeys = stmt_state.getGeneratedKeys();
			 int state_id = -1;
	           if (generatedKeys.next()) {
	        	   state_id = generatedKeys.getInt(1);
	           }

			String qry_city = "INSERT INTO City(city_name,state_id) VALUES(?,?)";

			PreparedStatement stmt_city = connection.prepareStatement(qry_city,Statement.RETURN_GENERATED_KEYS);
			stmt_city.setString(1, (String) li.get(5));
			stmt_city.setInt(2, state_id);
			stmt_city.executeUpdate();
			
			 return true;
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		} 
		finally 
		{
			HelperConnection.closeConnection(connection);
		}
		return false;
	}
	
	static ArrayList<Object> arr = new ArrayList<Object>();

	public static ArrayList<Object> getUserData() 
	{
		Connection connection = null;
		String qry = "SELECT * FROM Users";
		try 
		{
			connection = HelperConnection.openConnection();
			Statement stmt = connection.createStatement();
			ResultSet resultSet = stmt.executeQuery(qry);
			while (resultSet.next())
			{
				int user_id = resultSet.getInt(1);
				String user_name = resultSet.getString(2);
				String user_email = resultSet.getString(3);
				String user_phone = resultSet.getString(4);
				String user_address = resultSet.getString(5);
				String user_zipcode = resultSet.getString(6);
				String user_password = resultSet.getString(7);
				arr.add(user_id);
				arr.add(user_name);
				arr.add(user_email);
				arr.add(user_phone);
				arr.add(user_address);
				arr.add(user_zipcode);
				arr.add(user_password);
				return arr;
			}
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			HelperConnection.closeConnection(connection);
		}
		return arr;
	}
	
	public static String getUserName(String email) 
	{
		String user_name = null;
		Connection connection = null;
		String qry = "SELECT user_name FROM Users where user_email = ?";
		try 
		{
			connection = HelperConnection.openConnection();
			PreparedStatement stmt = connection.prepareStatement(qry);
			stmt.setString(1, email);
			ResultSet resultSet = stmt.executeQuery();
			while (resultSet.next())
			{
				user_name = resultSet.getString("user_name");
				return user_name;
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		} 
		finally 
		{
			HelperConnection.closeConnection(connection);
		}
		return user_name;
	}
	
	public static String checkEmailAjax(String email) 
	{
		Connection connection = null;
		String qry = "select user_email from Users where user_email =?";
		try 
		{
			connection = HelperConnection.openConnection();
			PreparedStatement stmt = connection.prepareStatement(qry);
			stmt.setString(1, email);
			ResultSet resultSet = stmt.executeQuery();
			if (resultSet.next()) 
			{
				return "Already Exit";
			}
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		} 
		return "Present";
	}

	public static boolean checkPhoneAjax(String phoneNo) 
	{
		Connection connection = null;
		String qry = "select user_phone from Users where user_phone =?";
		try 
		{
			connection = HelperConnection.openConnection();
			PreparedStatement stmt = connection.prepareStatement(qry);
			stmt.setString(1, phoneNo);
			ResultSet resultSet = stmt.executeQuery();
			if (resultSet.next())
			{
				return true;
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		} 
		finally 
		{
			HelperConnection.closeConnection(connection);
		}
		return false;
	}
}
