<%@page import="com.swiggy.dao.registerDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%! private static boolean executePhone(HttpServletRequest req, HttpServletResponse resp)
	{
		String phone = req.getParameter("ajaxphone");
		String p1 = req.getParameter("idendity");
		if(p1.equals("2"));
		return registerDao.checkPhoneAjax(phone);
	}
%>

<%=executePhone(request,response) %>