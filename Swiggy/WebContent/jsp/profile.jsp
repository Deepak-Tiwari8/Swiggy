<%@page import="com.swiggy.dao.registerDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <link rel="stylesheet" href="<%=request.getContextPath() %>/css/profile.css">
</head>
<body>
<div id="wrapper">
      <jsp:include page="component/header.jsp" />
      <%ArrayList users = (ArrayList)registerDao.getUserData(); %>
      <div class="containerProfile">
      <div class="left">
       <h1 id="customerName">Name: <%=users.get(1) %></h1>
      <span id="customerPhone">Phone:  <%=users.get(3) %></span>
      <br>
      <span id="customerEmail">Email:  <%=users.get(2) %></span>
      </div>
       <div class="right">
      <button id="profileBtn">EDIT PROFILE</button>
      </div>
        <div class="clearBoth"></div>
      <div class="subContainer">
      <div id="leftSub">
      <ul class="profileUl">
      <li class="profileUl"><a href="#">Orders</a></li>
      <li class="profileUl"><a href="#">Swiggy One</a></li>
      <li class="profileUl"><a href="#">Favourites</a></li>
      <li class="profileUl"><a href="#">Payments</a></li>
      <li class="profileUl"><a href="#">Addresses</a></li>
      </ul>
      </div>
       <div id="rightSub"></div>
       <div class="clearBoth"></div>
      </div>
      </div>
      <div class="clearBoth"></div>
     <jsp:include page="component/footer.jsp" />
 </div>
</body>
</html>