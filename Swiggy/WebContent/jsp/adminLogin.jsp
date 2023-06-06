<!DOCTYPE html>
<html lang="en">
<head>
    <title>Partner-Page</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/adminLogin.css">
     <script src="<%=request.getContextPath() %>/js/jquery-3.6.4.min.js"></script>
     <script src="<%=request.getContextPath()%>/js/script.js"></script>
</head>
<body>
  <div id="overlay"></div>
	<div id="SignupOrLogin">
		<form action="<%=request.getContextPath()%>/partnerServlet" id="reset" method="Post">
			<h1>Admin-Login-Page</h1>
			<div class="LoginBox1">
				UserName:<input type="text" placeholder="Enter Your Email" id="email1" name="email1" oninput="obj.userNameValidation();">
				<span id="Username_Id"></span>
				 <input type="hidden" value="admin" name="checkRequest">
			</div>
			<div class="LoginBox2">
				Password:<input type="password" placeholder="Enter Your Password" id="passWord1" name="password1" oninput="obj.PasswordValidation();">
				<span id="password_Id"></span>
			</div>
			<div class="buttons_Login">
				<input type="button" value="Submit" id="btn11"onclick="obj.LoginHardCodedValidation();"> 
                <input type="reset" value="Reset" id="btn21" onclick="obj.resetLogin();">
				<input type="button" value="Close" id="btn31" onclick="obj.LoginOff();">
			</div>
		</form>
    </div>
    <div class="container">
        <img src="<%=request.getContextPath() %>/images/Super_banner.jpg" alt="banner" id="banner">
        <header>
         <a href="#" id="login" onclick="obj.LoginOn()">Login</a>
        </header>
    </div>
</body>
</html>