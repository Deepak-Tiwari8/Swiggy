<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add food</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/addfoodmenu.css">
</head>
<body>
<div class="addfood">
 <form action="<%=request.getContextPath()%>/partnerServlet" method="Post">
           <h1>Add Menu</h1>
          <div class="form_boxes">
            <label for="food_name">Food-Name</label>
            <input type="text" id="name_food" name="food_name" required>
            <input type="hidden" value="addMenu" name="checkRequest">
          </div>
          <div class="form_boxes">
            <label for="food_type">Food-Type</label>
            <input type="text" id="type_food" name="food_type" required>
          </div>
          <div class="form_boxes">
            <label for="food_description">Food-Description</label>
            <input type="text" id="description_food" name="food_description" required>
          </div>
           <div class="form_boxes">
            <label for="food_price">Food-Price</label>
            <input type="text" id="price_food" name="food_price" required>
          </div>
           <div class="form_boxes">
            <label for="food_availability">Food-Availability</label>
            <input type="text" id="availability_food" name="food_availability" required>
          </div>
          <div class="form_boxes">
            <label for="food_image">Food-Image</label>
            <input type="file" id="image_food" name="food_image" required>
          </div>
          <div class="form_boxes">
            <label for="hotel_id">Hotel-Id</label>
            <input type="text" id="id_hotel" name="hotel_id" required>
          </div>
          <div class="form_boxes">
            <button type="submit">Submit</button>
          </div>
        </form>
      </div>
      </div>
</body>
</html>