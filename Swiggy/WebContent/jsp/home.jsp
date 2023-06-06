<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Swiggy-app</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/home.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/userPage.css">
    <script src="<%=request.getContextPath() %>/js/jquery-3.6.4.min.js"></script>
     <script src="<%=request.getContextPath()%>/js/script.js"></script>
</head>
<body>
    <div id="register" class="Reg">
		<form id="onSub" action="LoginRegister" method="Post">
			<h1>Registration - Form</h1>
			<div class="box1">
				<label>Name:</label> <input type="text"
					placeholder="Enter Your Name:" id="user_name" name="user_name"
					oninput=" obj.checkName();obj.onlyCharacterINputNameField();" maxlength="16">
				   <span id="User_Name"></span> 
				   <input type="hidden"value="registration" name="checkForm">
			</div>
			<div class="box2">
				<label>Email:</label> <input type="text"
					placeholder="Enter Email Address:" id="user_email" name="user_email"
					oninput="obj.checkEmail();" onblur="obj.ajaxEmail();" maxlength="20"> 
					<span id="user_email_address"></span>
			</div>
			<div class="box4">
				<label>Phone-No:</label> <input type="text"
					placeholder="Enter phone-no" id="user_phoneNo" name="user_phoneNo"
					oninput="obj.checkPhone();obj.onlyNumberINputPhone();" onblur="obj.ajaxPhone();" maxlength="10"> 
					<span id="user_phone_no"></span>
			</div>
		
          <label for="country">Country:</label>
        <select id="country" name="country" required>
            <option value="">Select Country</option>
            <option value="India">India</option>
        </select><br><br>
        
          <label for="state">State:</label>
        <select id="state" name="state" required>
            <option value="">Select state</option>
            <option value="MH">Maharashtra</option>
            <option value="Delhi">Delhi</option>
            <option value="MP">Madhya Pradesh</option>
        </select><br><br>
              	
        <label for="city">City:</label>
        <select id="city" name="city" required>
            <option value="">Select City</option>
            <option value="Mumbai">Mumbai</option>
            <option value="Delhi">Delhi</option>
            <option value="Pune">Pune</option>
            <option value="Bhopal">Bhopal</option>
        </select><br><br>
        
        	<div class="box3">
                   <label for="address">Address:</label>
                   <input type="text" id="address" name="address"  placeholder="Enter Your Address" maxlength="30">
                   <span id="user_address_err"></span>
              </div>  
              <div class="box7">
                   <label for="ZipCode">ZipCode:</label>
                   <input type="text" id="ZipCode" name="ZipCode"  placeholder="Enter Your ZipCode" maxlength="8">
                    <span id="user_zipcode_err"></span>
              </div>  
       
			<div class="box5">
				<label>Password:</label> <input type="password"
					placeholder="Enter Password:" id="user_password" name="user_password"
					oninput=" obj.checkPassword();" maxlength="10"> <span id="password_user"></span>
			</div>
			<div class="box6">
				<label>Confirm-Password:</label> <input type="password"
					placeholder="Confirm Password:" id="Confirmpassword"
					name="Confirmpassword" oninput=" obj.checkConfirmPassword();"maxlength="10">
				<span id="confirm_password"></span>
	</div>
       <div class="buttons">
				<input type="button" value="Submit" id="btn1"
					onclick="obj.onSubmitValid();obj.checkAllField();obj.submitdata();">
				<input type="reset" value="Reset" id="btn2"
					onclick=" obj.resetSign();"> 	
					<input type="button"
					value="Close" id="btn3" onclick="obj.registerClosed();">
			</div>
    </form>
	</div>
	
	
	<div id="overlay" onclick="obj.LoginOff();obj.resetSign();obj.registerClosed();"></div>
	<div id="SignupOrLogin">
		<form action="LoginRegister" id="reset" method="Post">
			<h1>Login-Page</h1>
			<div class="LoginBox1">
				UserName:<input type="text" placeholder="Enter Your Email"
					id="email1" name="email1" oninput="obj.userNameValidation();">
				<span id="Username_Id"></span>
			</div>
			<div class="LoginBox2">
				Password:<input type="password" placeholder="Enter Your Password"
					id="passWord1" name="password1" oninput="obj.PasswordValidation();">
				<span id="password_Id"></span> <input type="hidden" value="login" name="checkForm">
			</div>
			<div class="buttons_Login">
				<input type="button" value="Submit" id="btn11"
					onclick="obj.LoginHardCodedValidation()"> <input
					type="reset" value="Reset" id="btn21" onclick="obj.resetLogin();">
				<input type="button" value="Close" id="btn31"
					onclick="obj.LoginOff();">
			</div>
		</form>
</div>
    <div class="main_container">
       <div class="left_div_logo">
        <div class="container">
        <div id="logo">
           <a href="#"><img src="<%=request.getContextPath()%>/images/swiggy_logo.png" alt="logo" id="logo"></a>
        </div>
        <div class="swiggy_heading">
            <span id="swiggy_heading">Swiggy</span>
        </div>
        <div class="right_login_sign">
            <a href="#" id="login" onclick="obj.LoginOn()">Login</a>
            <a href="#" id="sign_up" onclick="obj.registerOpened()">Sign up</a>
        </div>
       </div>
       <div class="txt">
        Good Morning
        <h2 id="order_food">Order food from favourite restaurants near you.</h2>
       </div>
       <div class="search_food">
       <form action="<%=request.getContextPath()%>/jsp/userPage.jsp"> 
        <input type="text" placeholder="Enter Your Delivery Location" id="search_bar" required><button type="submit" id="find_food">FIND FOOD</button>
        </form>
       </div>
       <div id="popular_city">
        <h3>POPULAR CITIES IN INDIA</h3>
       </div>
       <ul>
        <li><a href="#">Ahmedabad</a></li>
        <li><a href="#">Bangalore</a></li>
        <li><a href="#">Delhi</a></li>
        <li><a href="#">Gurgaon</a></li>
        <li><a href="#">Mumbai</a></li>
        <li><a href="#">Pune</a></li>
       </ul>
    </div>
       <div class="right_div_image_banner">
        <img src="<%=request.getContextPath()%>/images/banner.jpg" alt="banner" id="banner">
       </div>
       <div class="clear_both"></div>
       <div class="mini_banner">
        <div class="sub1">
            <img src="<%=request.getContextPath()%>/images/sub1.jpg" alt="" id="img1">
            <h2>No Minimum Order</h2>
            <span>Order in for yourself or for the group,<br>
                 with no restrictions on order value</span>
        </div>
        <div class="sub2">
            <img src="<%=request.getContextPath()%>/images/sub2.jpg" alt="" id="img2">
            <h2>Live Order Tracking</h2>
            <span>
                Know where your order is at all times, <br>
                from the restaurant to your doorstep
            </span>
        </div>
        <div class="sub3">
            <img src="<%=request.getContextPath()%>/images/sub3.jpg" alt="" id="img3">
          <h2>Lightning-Fast Delivery </h2>
          <span>
            Experience Swiggy's superfast delivery <br>
            for food delivered fresh & on time
          </span> 
        </div>
        <div class="clear_both_1"></div>
    </div>
    <div class="app_store">
        <div class="left_play_store">
            <h1>Restaurants in <br> your pocket</h1>
            <span>
                Order from your favorite restaurants & track <br>
                  on the go, with the all-new Swiggy app.
            </span>
            <br>
            <div id="google_play"> 
            <a href="#"><span>GET IT ON</span><h3>Google Play</h3></a>
        </div>
        <div id="App_store"> 
            <a href="#"><span>Download on the</span><h3>App Store</h3></a>
        </div>
        </div>
        <div class="right_mobile">
            <img src="<%=request.getContextPath()%>/images/mobile1.png" alt="mobile1" id="mobile1">
            <img src="<%=request.getContextPath()%>/images/mobile2.png" alt="mobile2" id="mobile2">
        </div>
        <div class="clear_both_2"></div>
    </div>
    <jsp:include page="component/footer.jsp"/>
    </div>
</body>
</html>