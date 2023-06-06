<!DOCTYPE html>
<%@page import="com.swiggy.dao.PartnerDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<html lang="en">
<head>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/userPage.css">
    <script src="<%=request.getContextPath() %>/js/jquery-3.6.4.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/script.js"></script>
</head>
<body>
    <div id="wrapper">
        <jsp:include page="component/header.jsp" />
        <div class="wrapper_sub2">
            <%
                ArrayList allHotel = (ArrayList) PartnerDao.getAllHotel();
            %>
            <% int count = 0;%>
            <%for(int i=0;i<allHotel.size();i+=8) {%>
            <%count++ ;%>
            <%} %>
            <span id="restaurants">(<%= count %>) Restaurants</span>
            <div class="contenting_list">
                <ul>
                    <li><a href="#" class="Relevance">Relevance</a></li>
                    <li><a href="#" class="Low">Cost: Low To High</a></li>
                    <li><a href="#" class="High">Cost: High To Low</a></li>
                    <li><a href="#" class="Offer">Offers</a></li>
                    <li><a href="#" class="Filters">Filters</a></li>
                </ul>
            </div>
            <hr>
            <div class="hotel_div">
                <%
                    for (int i = 0; i < allHotel.size(); i += 7) {
                %>
                <a href="<%= request.getContextPath() %>/jsp/DisplayHotel.jsp?hotel_id=<%= allHotel.get(i) %>&hotel_img=<%= allHotel.get(i + 6) %>&hotel_name=<%=allHotel.get(i+1)%>&hotel_phone=<%= allHotel.get(i+3)%>&hotel_address=<%= allHotel.get(i+4)%>&hotel_city=<%= allHotel.get(i+5)%>">
                    <div class="boxes">
                      <span class="hotelName"> <%=allHotel.get(i+1) %>  </span> <br>
                        <img src="<%= request.getContextPath() %>/images/<%= allHotel.get(i + 6) %>" alt="not found" class="img_hotel">
                        <br>
                        <span class="contactHotel">Phone: <%=allHotel.get(i+3) %>  </span>
                         <br>
                          <span class="addresss">Address:  <%=allHotel.get(i+4) %> </span>
                          <br>
                          <span class="city">City:   <%=allHotel.get(i+5) %> </span>
                           <br>
                    </div>
                </a>
                <%
                    }
                %>
                <div class="clearBoth"></div>
            </div>
            <div class="clearBoth"></div>
        </div>
        <div class="clearBoth"></div>
        <jsp:include page="component/footer.jsp" />
    </div>
</body>
</html>
