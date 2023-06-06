<%@page import="com.swiggy.dao.PartnerDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Display Hotel</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/displayhotel.css">
    <script src="<%=request.getContextPath() %>/js/jquery-3.6.4.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/script.js"></script>
</head>
<body>
<div id="wrapper">
    <jsp:include page="component/header.jsp" />
     <%
        String Id = request.getParameter("hotel_id");
        String Images = request.getParameter("hotel_img");
        String hotelname = request.getParameter("hotel_name");
        String hotelphone = request.getParameter("hotel_phone");
        String hoteladdress = request.getParameter("hotel_address");
        String hotelcity = request.getParameter("hotel_city");
    %>
    
      <% ArrayList allHotelMenu = (ArrayList)PartnerDao.allHotelMenu(Id); %>
     
   
    <img src="<%=request.getContextPath()%>/images/<%=Images%>" alt="not found" class="img_hotel">
    <br>
    <span id="hotelId"> Hotel ID: <%=Id %>  </span>
    <br>
   <span id="hotelName"> Name: <%=hotelname %>  </span>
    <br>
   
    <span id="hotePhone">Phone: <%=hotelphone %>  </span>
    <br>
     <span id="hoteAddress">Address:   <%=hoteladdress %>  </span>
     <br>
      <span id="hoteCity">City:   <%=hotelcity %> </span>
     <br>
   
    <br>
   
  <div class="menuBox">
    <table>
        <thead>
            <tr>
                <th>Menu Id</th>
                <th>Food Name</th>
                <th>Price</th>
                <th>Image</th>
            </tr>
        </thead>
        <tbody>
            <% for (int i = 0; i < allHotelMenu.size(); i += 9) { %>
                <tr>
                    <td><%= allHotelMenu.get(i + 4) %></td>
                    <td><%= allHotelMenu.get(i + 5) %></td>
                    <td><%= allHotelMenu.get(i + 6) %></td>
                    <td>
                        <img src="<%= request.getContextPath() %>/images/<%= allHotelMenu.get(i + 8) %>"
                            alt="not found" class="img_hotel_menu">
                    </td>
                    <td>
                        <a href="<%= request.getContextPath() %>/jsp/Cart.jsp?hotelName=<%=allHotelMenu.get(i+1) %>&menuId=<%=allHotelMenu.get(i+4) %>" class="cartBtn">Add TO Cart </a>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>
</div>
	
    <jsp:include page="component/footer.jsp" />
</div>
</body>

</html>   
   
