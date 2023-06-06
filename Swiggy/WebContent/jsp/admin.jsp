<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Swiggy Partner Dashboard</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/admin.css">
     <script src="<%=request.getContextPath() %>/js/jquery-3.6.4.min.js"></script>
     <script src="<%=request.getContextPath()%>/js/script.js"></script>
</head>
<body>
    <div class="wrapper">
      <div id="header">
        <h1>Swiggy Admin Dashboard</h1>
        <div class="account">
            <span id="partner_account">Account</span>
            <span>Hi</span>
        </div>
      </div>
      <div id="sidebar">
        <ul>
          <li><a href="#">Admin profile</a></li>
         <li><a href="<%=request.getContextPath()%>/jsp/hotelform.jsp">Add Hotel</a></li>
          <li><a href="<%=request.getContextPath()%>/jsp/addFoodMenu.jsp">Add Menu</a></li>
          <li><a href="#"> Check Orders History</a></li>
          <li><a href="#">Check Payments</a></li>
        </ul>
      </div>
      <div id="content">
        <h2>Welcome to the Swiggy admin Dashboard</h2>
        <div class="order_page">
           
        </div>
      </div> 
      <div class="clear_both"></div>
      <div id="footer">
        <p>&copy; 2023 Swiggy. All rights reserved.</p>
     </div>
    </div>   
</body>
</html>