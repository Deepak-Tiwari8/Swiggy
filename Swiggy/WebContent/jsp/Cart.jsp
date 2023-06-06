<%@page import="com.swiggy.dao.PartnerDao"%>
<%@page import="com.swiggy.dao.registerDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cart page</title>
     <link rel="stylesheet" href="<%=request.getContextPath()%>/css/cart.css">
     <script src="<%=request.getContextPath() %>/js/jquery-3.6.4.min.js"></script>
     <script src="<%=request.getContextPath()%>/js/script.js"></script>
</head>
<body>
<div id="wrapper">
   <jsp:include page="component/header.jsp" />
		  <%ArrayList users = (ArrayList)registerDao.getUserData(); %>
		  <%for(int i=0;i<users.size();i++){%>
		  <%System.out.print(i+" "+users.get(i)); %>
		  <%} %>
		 <% Integer userId = (Integer) users.get(0); %>
		 
		  <%  int itemCount = 0; %>
		  
   <main>
   <form action="<%=request.getContextPath() %>/jsp/Order.jsp">
    <div id="cart">
      <h2 id="foodItem">Sorry No Item Avialable</h2>
      <ul id="cart-items">
     <%  String hotelname = request.getParameter("hotelName"); %>
      	 <li>Hotel Name :<%=hotelname %> </li>
      	<br>
      	 <% String MenuID = request.getParameter("menuId"); %>
      	 <li> Menu Id : <%=MenuID %></li>
      </ul>
      <p>Total: RS-00</p>
      <button type="submit" id="orderbtn">Order Food</button>
    </div>
    </form>
  </main>
 
  
   <jsp:include page="component/footer.jsp" />
  </div>
</body>
</html>