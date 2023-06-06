package com.swiggy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.swiggy.dao.registerDao;
import com.swiggy.helper.loginUser;

public class LoginRegister extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
	{
		String check = request.getParameter("checkForm");
		
		if (check.equals("login"))
		{
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				String email = request.getParameter("email1");
				String password = request.getParameter("password1");
			    loginUser.checkCondition(email, password);
			if (loginUser.flag == true) {
				 String Username = registerDao.getUserName(email);
                 HttpSession session = request.getSession();
                 session.setAttribute("username",Username);
                 System.out.println(Username+ " "+ email);
                 System.out.println("Session Start");
				RequestDispatcher rd = request.getRequestDispatcher("jsp/userPage.jsp");
				rd.forward(request, response);
				out.print("Login Successfully");
			} 
			else 
			{
				out.print("Login Fail");
			}
		} 
		
		else if (check.equals("registration"))
		{
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");

			String user_name = request.getParameter("user_name");
			String email = request.getParameter("user_email");
			String user_phone = request.getParameter("user_phoneNo");
			String country = request.getParameter("country");
			String state = request.getParameter("state");
			String city = request.getParameter("city");
			String user_address = request.getParameter("address");
			String user_zipcode = request.getParameter("ZipCode");
			String user_password = request.getParameter("user_password");

			ArrayList<Object> list = new ArrayList<Object>();
			list.add(user_name);
			list.add(email);
			list.add(user_phone);
			list.add(country);
			list.add(state);
			list.add(city);
			list.add(user_address);
			list.add(user_zipcode);
			list.add(user_password);
					
			boolean valueCheck = registerDao.registerUser(list);
			if (valueCheck == true) 
			{
				out.print("Registation completed");
				out.print("<a href='jsp/home.jsp'> back to home</a>");
			}
			else
			{
				out.print("Registation not completed");
				out.print("<a href='jsp/home.jsp'> back to home</a>");
			}
		}
	}

}
