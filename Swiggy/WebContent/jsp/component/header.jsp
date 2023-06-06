 <%@page import="com.swiggy.dao.registerDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Header</title>
     <link rel="stylesheet" href="<%=request.getContextPath()%>/css/header.css">
     <script src="<%=request.getContextPath() %>/js/jquery-3.6.4.min.js"></script>
     <script src="<%=request.getContextPath()%>/js/script.js"></script>
</head>
<body>
        <header>
            <div class="container">
                <div class="sub_container1">
                    <a href="#" class="swiggy_logo">
                        <img src="<%=request.getContextPath()%>/images/swiggy_logo.png" alt="" id="logo">
                    </a>
                    <div class="sub_container2">
                      <a href="#"> <span>Rabale</span>
                        <span>Navi Mumbai India</span>  </a> 
                    </div>
                    <ul class="nav_bar">
                        <li><a href="#" class="Search">Search</a></li>
                        <li><a href="#" class="Offers">Offers</a></li>
                        <li><a href="#" class="Help">Help</a></li>
                        <li><a href="<%=request.getContextPath()%>/jsp/profile.jsp" class="Account">Account
                        <span id="user1">Hi Guest </span>    
                        </a></li>
                        <li><a href="<%=request.getContextPath()%>/jsp/Cart.jsp" class="Cart" id="cartItems">Cart[0]</a></li>
                       </ul>         
                            <script type="text/javascript">
                          
                            	  document.getElementById("user1").innerHTML = "Hi " + " <%=(String)session.getAttribute("username")%>";
                           </script>
                   <div class="profil_section">
                        <ul id="profil_sectionUl">
                            <li><a href="<%=request.getContextPath()%>/jsp/profile.jsp">Profile</a></li>
                            <li><a href="#">Orders</a></li>
                            <li><a href="#">Swiggy one</a></li>
                            <li><a href="#">Favourties</a></li>
                            <li><a href="Logout">Logout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
</body>
</html>