package com.swiggy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.swiggy.dao.PartnerDao;

import com.swiggy.helper.loginAdmin;


public class partnerServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		

		 // Admin Login
		
		 PrintWriter out = response.getWriter();
		 response.setContentType("text/html");
		
		 String checkvalue = request.getParameter("checkRequest");
		 if(checkvalue != null&&checkvalue.equals("admin"))
		 {
		 String email = request.getParameter("email1");
		 String password = request.getParameter("password1");
		 loginAdmin.checkAdminValidation(email, password);
		 if (loginAdmin.flag == true) {
		 RequestDispatcher rd = request.getRequestDispatcher("jsp/admin.jsp");
		 rd.forward(request, response);
		 out.print("Login Successfully");
		 }
		 else
		 {
		 out.print("Login Fail");
		 }
		 }
		 
		
		// Hotel Add
		
		 else if(checkvalue != null&&checkvalue.equals("addHotel"))
		 {
		 String name_hotel = request.getParameter("name_hotel");
		 String cuisine_hotel = request.getParameter("cuisine_hotel");
		 String phone_hotel = request.getParameter("phone_hotel");
		 String address_hotel = request.getParameter("address_hotel");
		 String city_hotel = request.getParameter("city_hotel");
		 String hotel_image = request.getParameter("image_hotel");
		
		 ArrayList<Object> li = new ArrayList<Object>();
		 li.add(name_hotel);
		 li.add(cuisine_hotel);
		 li.add(phone_hotel);
		 li.add(address_hotel);
		 li.add(city_hotel);
		 li.add(hotel_image);
		
		 int valueCheck = PartnerDao.addHotel(li);
		
		 if(valueCheck==1)
		 {
		 out.print("Add Hotel");
		 }
		 else
		 {
		 out.print("hotel not add");
		 }
		 }
              // Menu Add
		 else if(checkvalue != null&&checkvalue.equals("addMenu"))
		 {
		 String foodName = request.getParameter("food_name");
		 String foodType = request.getParameter("food_type");
		 String foodDescription = request.getParameter("food_description");
		 String foodPrice = request.getParameter("food_price");
		 String foodAvailability = request.getParameter("food_availability");
		 String foodImage = request.getParameter("food_image");
		 String HotelID = request.getParameter("hotel_id");
		
		 ArrayList<Object> list = new ArrayList<Object>();
		
		 list.add(foodName);
		 list.add(foodType);
		 list.add(foodDescription);
		 list.add(foodPrice);
		 list.add(foodAvailability);
		 list.add(foodImage);
		 list.add(HotelID);
		
		 for(int i=0;i<list.size();i++)
		 {
		 System.out.println(i+ " " +list.get(i));
		 }
		
		 int valueCheck1 = PartnerDao.addFoodMenu(list);
		 if(valueCheck1==1)
		 {
		 out.print("add Menu");
		 }
		 else
		 {
		 out.print("Menu not added");
		 }
		 } 
	}
}
