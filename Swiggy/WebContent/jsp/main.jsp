<!DOCTYPE html>
<%@page import="com.swiggy.dao.registerDao"%>
<head>
    <title>Swiggy-Home</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
     <script src="<%=request.getContextPath() %>/js/jquery-3.6.4.min.js"></script>
     <script src="<%=request.getContextPath()%>/js/script.js"></script>
</head>
<body>
    <div class="wrapper">
        <div class="sub_wrapper">
        <div class="logo_home">
            <img src="<%=request.getContextPath()%>/images/swiggy_logo.png" alt="logo" id="logo_home">
            <span id="swiggy_id">Swiggy</span>
        </div>
        <div class="search_location">
            <span>Setup and precise location</span>
        </div>
        <div class="input_search">
            <input type="text" placeholder="Search for restaurant and food" id="search_resturant">
            <a href="#">
            <img src="<%=request.getContextPath()%>/images/search_icon.png" alt="serach_icon" id="serach_icon">
        </a>
        </div>
        <div class="admin_icon">
            <a href="#" id="admin_hover"> 
            <img src="<%=request.getContextPath()%>/images/admin_icon.jpg" alt="admin_icon" id="Admin_icon">
            </a>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="banner_section">
        <div class="sub_banner">
            <div class="content">
                <div class="left_section">
                    <h1>
                        Order Food <br>Online in<br> Mumbai
                    </h1>
                </div>
                <div class="right_section">
                    <img src="<%=request.getContextPath()%>/images/banner_img.png" alt="banner_img" id="banner_img">
                </div>
            </div>
        </div>
    </div>

    <!-- main Section -->
    <div class="main_section">
        <span id="uname">What's on your mind?</span>
        <div class="banner_top">
            <div class="north_indian">
              <a href="#"><img src="<%=request.getContextPath()%>/images/North_Indian.jpg"alt=" North_Indian" id="North_Indian"></a> 
            </div>
            <div class="Burger">
             <a href="#"><img src="<%=request.getContextPath()%>/images/Burger.png" alt="Burger" id="burger"></a> 
              </div>
              <div class="clear_both_banner"></div>
        <hr id="hr_banner">
        </div>
        <div class="container_big_images"> 
        <div class="sub_restaurant_chain_section">
            <span id="restaurant_chain_heading">Top restaurant chains in Mumbai</span>
            <div class="burger1">
                <img src="<%=request.getContextPath()%>/images/Burger1.png" alt="burger" id="BurgerId">
                <span id="price_burger">RS-199</span>
            </div>
            <div class="Coca_cola">
                <img src="<%=request.getContextPath()%>/images/Coca-cola Masala.png" alt="Coca-cola Masala" id="Coca_colaId">
                <span id="price_CocaCola">RS-80</span>
            </div>
          </div>
        </div> 
     </div>
     <div class="clear_both_banner"></div>
    <div class="footer">
        <footer>
            <div class="company">
                <h1 id="comp1">Company</h1>
                <a href="#">About us</a>
                <a href="#">Team</a>
                <a href="#">Careers</a>
                <a href="#">Swiggy Blog</a>
                <a href="#">Bug Bounty</a>
                <a href="#">Swiggy One</a>
                <a href="#">Swiggy Corporate</a>
            </div>
            <div class="contact">
                <h1 id="cont1">Contact</h1>
                <a href="#">Help & Support</a>
                <a href="#">Partner with us</a>
                <a href="#">Ride with us</a>
            </div>
            <div class="legal">
                <h1 id="leg1">LEGAL</h1>
                <a href="#">Terms & Conditions</a>
                <a href="#">Refund & Cancellation</a>
                <a href="#">Privacy Policy</a>
                <a href="#">Cookie Policy</a>
                <a href="#">Offer Terms</a>
                <a href="#">Phishing & Fraud</a>
            </div>
            <div class="app">
                <div id="google_play_1"> 
                    <a href="#"><span>GET IT ON</span><h3>Google Play</h3></a>
                </div>
                <br>
                <div id="App_store_1"> 
                    <a href="#"><span>Download on the</span><h3>App Store</h3></a>
                </div>
            </div>
            <div class="clear_both_3"></div>
            <hr>

            <img src="<%=request.getContextPath()%>/images/swiggy_logo.png" alt="" id="another_swiggy_logo"> <span id="swiggy_another_heading">Swiggy</span>
            <div id="copyright">&#169; 2023 Swiggy</div>
        </footer>
    </div>
    </div>
</body>
</html>
</body>
</html>