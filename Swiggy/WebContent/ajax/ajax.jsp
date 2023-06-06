<%@page import="com.swiggy.dao.registerDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%! private static String execute(HttpServletRequest req, HttpServletResponse resp) 
	{
		String email = req.getParameter("emailId");
		String value = req.getParameter("requestIdentifier");
		if(value.equals("1"));
		return registerDao.checkEmailAjax(email);
	}
%>
<%=execute(request,response)%>
