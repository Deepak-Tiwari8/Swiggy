package com.swiggy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.swiggy.utility.HelperConnection;

public class PartnerDao 
{

	public static int addHotel(ArrayList<Object> li) 
	{
		Connection connection = null;
		ResultSet generatedKeys = null;

		String qry = "INSERT INTO Hotel (hotel_name , hotel_cuisine , hotel_phone , hotel_address , hotel_city , hotel_food_image) VALUES (?,?,?,?,?,?)";
		int value = 0;
		try 
		{
			connection = HelperConnection.openConnection();
			PreparedStatement stmt_hotel = connection.prepareStatement(qry);
			stmt_hotel.setString(1, (String) li.get(0));
			stmt_hotel.setString(2, (String) li.get(1));
			stmt_hotel.setString(3, (String) li.get(2));
			stmt_hotel.setString(4, (String) li.get(3));
			stmt_hotel.setString(5, (String) li.get(4));
			stmt_hotel.setString(6, (String) li.get(5));
			value = stmt_hotel.executeUpdate();
			stmt_hotel.close();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		} 
		finally 
		{
			HelperConnection.closeConnection(connection);
		}
		return value;
	}

	static ArrayList<Object> arr = new ArrayList<Object>();

	public static ArrayList<Object> getAllHotel()
	{
		Connection connection = null;
		String qry = "SELECT * FROM Hotel";
		try 
		{
			connection = HelperConnection.openConnection();
			Statement stmt = connection.createStatement();
			ResultSet resultSet = stmt.executeQuery(qry);
			while (resultSet.next())
			{
				String hotel_id = resultSet.getString(1);
				String hotel_name = resultSet.getString(2);
				String hotel_cuisine = resultSet.getString(3);
				String hotel_phone = resultSet.getString(4);
				String hotel_address = resultSet.getString(5);
				String hotel_city = resultSet.getString(6);
				String image_hotel = resultSet.getString(7);

				arr.add(hotel_id);
				arr.add(hotel_name);
				arr.add(hotel_cuisine);
				arr.add(hotel_phone);
				arr.add(hotel_address);
				arr.add(hotel_city);
				arr.add(image_hotel);
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

	static ArrayList<Object> arr_admin = new ArrayList<Object>();

	public static ArrayList<Object> getAllAdminData()
	{
		Connection connection = null;
		String qry = "SELECT * FROM Admin";
		try 
		{
			connection = HelperConnection.openConnection();
			Statement stmt = connection.createStatement();
			ResultSet resultSet = stmt.executeQuery(qry);
			while (resultSet.next())
			{
				int admin_id = resultSet.getInt(1);
				String admin_name = resultSet.getString(2);
				String admin_email = resultSet.getString(3);
				String admin_phone = resultSet.getString(4);
				String admin_password = resultSet.getString(5);
				arr_admin.add(admin_id);
				arr_admin.add(admin_name);
				arr_admin.add(admin_email);
				arr_admin.add(admin_phone);
				arr_admin.add(admin_password);
				return arr_admin;
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
		return arr_admin;
	}

	public static int addFoodMenu(ArrayList<Object> list_menu) 
	{
		Connection connection = null;
		String qry = "INSERT INTO Menu (food_name,food_type,food_description,food_price,food_availability,food_image,hotel_id) VALUES(?,?,?,?,?,?,?)";
		int value = 0;
		try 
		{
			connection = HelperConnection.openConnection();
			PreparedStatement stmt_menu = connection.prepareStatement(qry);
			stmt_menu.setString(1, (String) list_menu.get(0));
			stmt_menu.setString(2, (String) list_menu.get(1));
			stmt_menu.setString(3, (String) list_menu.get(2));
			stmt_menu.setString(4, (String) list_menu.get(3));
			stmt_menu.setString(5, (String) list_menu.get(4));
			stmt_menu.setString(6, (String) list_menu.get(5));
			stmt_menu.setInt(7, Integer.parseInt((String) list_menu.get(6)));
			value = stmt_menu.executeUpdate();
			stmt_menu.close();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		} 
		finally 
		{
			HelperConnection.closeConnection(connection);
		}
		return value;
	}
	
	public static ArrayList<Object> allHotelMenu(String hotel_id) {
	    ArrayList<Object> menu_hotel = new ArrayList<Object>();
	    System.out.println(hotel_id);
	    Connection connection = null;
	    String qry = "SELECT h.hotel_id, h.hotel_name, h.hotel_city, h.hotel_address, m.menu_id, m.food_type, m.food_name, m.food_price ,m.food_image FROM Hotel h INNER JOIN Menu m ON h.hotel_id = m.hotel_id WHERE h.hotel_id = ?";
	    try {
	        connection = HelperConnection.openConnection();
	        
	        PreparedStatement statement = connection.prepareStatement(qry);
	        statement.setString(1, hotel_id);
	        
	        ResultSet resultSet = statement.executeQuery();
	        
	        while (resultSet.next()) {
	          
	            String hotelId = resultSet.getString("hotel_id");
	            String hotelName = resultSet.getString("hotel_name");
	            String hotelCity = resultSet.getString("hotel_city");
	            String hotelAddress = resultSet.getString("hotel_address");
	            int menuId = resultSet.getInt("menu_id");
	            String foodType = resultSet.getString("food_type");
	            String foodName = resultSet.getString("food_name");
	            int foodPrice = resultSet.getInt("food_price");
	            String foodImage = resultSet.getString("food_image");
	            
	            menu_hotel.add(hotelId);
	            menu_hotel.add(hotelName);
	            menu_hotel.add(hotelCity);
	            menu_hotel.add(hotelAddress);
	            menu_hotel.add(menuId);
	            menu_hotel.add(foodType);
	            menu_hotel.add(foodName);
	            menu_hotel.add(foodPrice);
	            menu_hotel.add(foodImage);
	            
				// return menu_hotel;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        HelperConnection.closeConnection(connection);
	    }
	    
	    return menu_hotel;
	}
	
	
	public static ArrayList<Object> AddToCart(ArrayList<Object> cart)
	{
		String qry ="SELECT c.quantity, m.menu_id, m.food_name, m.food_price, m.food_type, h.hotel_id, h.hotel_name, h.hotel_city, u.user_id, u.user_name, u.user_address FROM Cart c JOIN Menu m ON m.menu_id = c.menu_id JOIN Hotel h ON h.hotel_id = m.hotel_id JOIN Users u ON u.user_id = c.user_id WHERE u.user_id = ?";
		Connection connection = null;
		for(int i=0;i<cart.size();i++)
		{
			System.out.println(i+""+cart.get(i));
		}
		return cart;
	}
	
}
