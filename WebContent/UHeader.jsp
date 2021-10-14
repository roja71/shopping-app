<!doctype html>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="userpack.User"%>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>The Electronics Shop</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
    <!--? Preloader Start 
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    <header>
        <!-- Header Start -->
        <div class="header-area">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="menu-wrapper">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="index.html"><img src="assets/img/logo/logo_new1.jpg" alt="" style="height:60px; width:120ps;"></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu d-none d-lg-block">
                            <nav>                                                
                                <ul id="navigation">  
                                    <li><a href="index.jsp">Home</a></li>
                                    
                                       
                                    
                                    <li><a href="contactUs.jsp">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!-- Header Right -->
                        <div class="header-right">
                            <ul>
                                <li>
                                    <div class="nav-search search-switch">
                                        <span class="flaticon-search"></span>
                                    </div>
                                </li>
                      		<% 
                      			User usr=(User)session.getAttribute("userinfo");
                      			int count=0;
                      			ArrayList<HashMap<String, String>> all=(ArrayList<HashMap<String, String>>)session.getAttribute("cart_info");
                      			if(all!=null)
                      			{
                      				count=all.size();
                      			}
                      			if(usr!=null)
                      			{
                      		
                      		
                      		%>
                                 <li class="nav-item dropdown">
								        <a  href="#" id="navbarDropdown"  data-toggle="dropdown" >
								          
								          <h5><%= usr.getUsername() %></h5>
								        </a>
								        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
								          
								          <a class="dropdown-item" href="UserLogout">LogOut</a>
								          
								          
								        </div>
     							 </li>
     							 <%
                      			}
                      			else
                      			{
                      				
     							 %>
     							 <li class="nav-item dropdown">
								        <a  href="#" id="navbarDropdown"  data-toggle="dropdown" >
								          <span class="flaticon-user"></span>
								        </a>
								        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
								          <a class="dropdown-item" href="Register.jsp">Create Account</a>
								          <div class="dropdown-divider"></div>
								          <a class="dropdown-item" href="Login.jsp">Login</a>
								          
								          
								        </div>
     							 </li>
     							 <%
                      			}
     							 %>
                                <li><a href="cart_display.jsp"><span class="flaticon-shopping-cart">(<%= count %>)</span></a> </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Mobile Menu -->
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>