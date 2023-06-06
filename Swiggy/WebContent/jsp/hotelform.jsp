<!DOCTYPE html>
<html lang="en">
<head>
    <title>Hotel</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/hotelform.css">
 <script src="<%=request.getContextPath() %>/js/jquery-3.6.4.min.js"></script>
     <script src="<%=request.getContextPath()%>/js/script.js"></script>
</head>
<body>
    <div id="overlay"></div>
    <div class="container">
        <h2>Hotel Registration Form</h2>
        <form action="<%=request.getContextPath()%>/partnerServlet" method="post">
          <div class="form_boxes">
            <label for="name_hotel">Name</label>
            <input type="text" id="hotel_name" name="name_hotel" required>
             <input type="hidden" value="addHotel" name="checkRequest">
          </div>
          <div class="form_boxes">
            <label for="cuisine_hotel">Cuisine</label>
            <input type="text" id="hotel_cuisine" name="cuisine_hotel" required>
          </div>
          <div class="form_boxes">
            <label for="phone_hotel">Phone</label>
            <input type="text" id="hotel_phone" name="phone_hotel" required>
          </div>
          <div class="form_boxes">
            <label for="address_hotel">Address</label>
            <input type="text" id="hotel_address" name="address_hotel" required>
          </div>
           <div class="form_boxes">
            <label for="city_hotel">City</label>
            <input type="text" id="hotel_city" name="city_hotel" required>
          </div>
            <div class="form_boxes">
            <label for="hotel_image">Hotel-Image</label>
            <input type="file" id="hotel_image" name="image_hotel" required>
          </div>
          <div class="form_boxes">
            <button type="submit">Submit</button>
          </div>
        </form>
      </div>
</body>
</html>