<%--
  Created by IntelliJ IDEA.
  User: sya
  Date: 3/4/2016
  Time: 9:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <%--old--%>
    <%--<title>SNCF-Test</title>--%>
    <%--<link rel=stylesheet type="text/css" href="/css/bootstrap.css">--%>
    <%--<link rel=stylesheet type="text/css" href="/css/style.css">--%>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="LimpidThemes">

    <title>SNCF-Test</title>

    <!-- STYLES -->

    <link href="assets/css/animate.min.css" rel="stylesheet">
    <link href="assets/css/bootstrap-select.min.css" rel="stylesheet">
    <link href="assets/css/owl.carousel.css" rel="stylesheet">
    <link href="assets/css/owl-carousel-theme.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="assets/css/flexslider.css" rel="stylesheet" media="screen">
    <link href="assets/css/style.css" rel="stylesheet" media="screen">
    <!-- LIGHT -->
    <link rel="stylesheet" type="text/css" href="assets/css/dummy.html" id="select-style">
    <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <link href="assets/css/light.css" rel="stylesheet" media="screen">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,600' rel='stylesheet' type='text/css'>

</head>
<body class="load-full-screen">
    <%--old nav--%>
    <%--<nav class="navbar navbar-default navbar-static-top">--%>
        <%--<div class="container">--%>
            <%--<div class="navbar-header">--%>
                <%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">--%>
                    <%--<span class="sr-only">Toggle navigation</span>--%>
                    <%--<span class="icon-bar"></span>--%>
                    <%--<span class="icon-bar"></span>--%>
                    <%--<span class="icon-bar"></span>--%>
                <%--</button>--%>
                <%--<a class="navbar-brand" href="/">SNCF</a>--%>
            <%--</div>--%>
            <%--<div id="navbar" class="navbar-collapse collapse">--%>
                <%--<ul class="nav navbar-nav">--%>
                    <%--<li class="active"><a href="">blabla</a></li>--%>
                    <%--<li><a href="">blabla</a></li>--%>
                    <%--<li><a href="">blabla</a></li>--%>
                    <%--<li><a href="">blabla</a></li>--%>
                <%--</ul>--%>
                <%--<ul class="nav navbar-nav navbar-right">--%>
                    <%--<li><a href="/login">Login</a></li>--%>
                    <%--<li><a href="/logout">Logout</a></li>--%>
                <%--</ul>--%>
            <%--</div><!--/.nav-collapse -->--%>
        <%--</div>--%>
    <%--</nav>--%>

    <!-- BEGIN: PRELOADER -->
    <div id="loader" class="load-full-screen">
        <div class="loading-animation">
            <span><i class="fa fa-plane"></i></span>
            <span><i class="fa fa-bed"></i></span>
            <span><i class="fa fa-ship"></i></span>
            <span><i class="fa fa-suitcase"></i></span>
        </div>
    </div>
    <!-- END: PRELOADER -->


    <!-- BEGIN: SITE-WRAPPER -->
    <div class="row header-top">
        <div class="container clear-padding">
            <div class="navbar-contact">
                <div class="col-md-7 col-sm-6 clear-padding">
                    <a href="#" class="transition-effect"><i class="fa fa-phone"></i> (+33) 1234567890</a>
                    <a href="#" class="transition-effect"><i class="fa fa-envelope-o"></i> Yiao.SUN@supinfo.com</a>
                </div>
                <div class="col-md-5 col-sm-6 clear-padding search-box">
                    <div class="col-md-6 col-xs-5 clear-padding">
                        <form >
                            <div class="input-group">
                                <input type="text" name="search" class="form-control" required placeholder="Search">
                                <span class="input-group-addon"><i class="fa fa-search fa-fw"></i></span>
                            </div>
                        </form>
                    </div>

                    <%--Todo login--%>
                    <div class="col-md-6 col-xs-7 clear-padding user-logged">
                        <%


                            if (request instanceof HttpServletRequest)
                            {
                                String username = "";
                                HttpServletRequest httpRequest = (HttpServletRequest) request;
                                HttpSession sessionIn =  httpRequest.getSession();
                                username = (String) sessionIn.getAttribute("username");
                                if (username!=""&&username!=null)
                                {
                                    out.println(
                                            "<a href=\"\" class=\"transition-effect\"> Hi " + username + "</a>");
                                }
                                else
                                {
                                    out.println(
                                            "<a href=\"/login\" class=\"transition-effect\">" + "Login" + "</a>"
                                    );
                                }
                            }
                        %>

                        <%--<a href="/login" class="transition-effect">--%>
                            <%--&lt;%&ndash;<img src="assets/images/user.jpg" alt="cruise">&ndash;%&gt;--%>
                            <%--Login--%>
                        <%--</a>  --%>

                        <%--<a href="#" class="transition-effect">--%>
                            <%--<img src="assets/images/user.jpg" alt="cruise">--%>
                            <%--Hi, Lenore--%>
                        <%--</a>--%>
                        <a href="/logout" class="transition-effect">
                            <i class="fa fa-sign-out"></i>Sign Out
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row light-menu">
        <div class="container clear-padding">
            <!-- BEGIN: HEADER -->
            <div class="navbar-wrapper">
                <div class="navbar navbar-default" role="navigation">
                    <!-- BEGIN: NAV-CONTAINER -->
                    <div class="nav-container">
                        <div class="navbar-header">
                            <!-- BEGIN: TOGGLE BUTTON (RESPONSIVE)-->
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>

                            <!-- BEGIN: LOGO -->
                            <a class="navbar-brand logo" href="#">CRUISE</a>
                        </div>

                        <!-- BEGIN: NAVIGATION -->
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="dropdown">
                                    <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-home"></i> HOME <i class="fa fa-caret-down"></i></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="index.html"> HOME STYLE 1</a></li>
                                        <li><a href="index-2.html"> HOME STYLE 2</a></li>
                                        <li><a href="index-3.html"> HOME STYLE 3</a></li>
                                        <li><a href="index-4.html"> HOME STYLE 4</a></li>
                                        <li><a href="index-5.html"> HOME STYLE 5</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown mega">
                                    <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-bed"></i> HOTELS <i class="fa fa-caret-down"></i></a>
                                    <ul class="dropdown-menu mega-menu">
                                        <li class="col-md-3 col-sm-3 desc">
                                            <h4>HOTELS</h4>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <h5>PAGES</h5>
                                            <ul>
                                                <li><a href="hotel.html">HOTEL SEARCH</a></li>

                                                <li><a href="hotel-list.html">HOTEL LIST</a></li>
                                                <li><a href="hotel-grid.html">HOTEL GRID</a></li>
                                                <li><a href="hotel-booking.html">HOTEL BOOKING</a></li>
                                                <li><a href="hotel-booking-2.html">HOTEL BOOKING 2</a></li>
                                                <li><a href="hotel-detailed-3.html">HOTEL DETAILED</a></li>
                                                <li><a href="hotel-detailed.html">HOTEL DETAILED 2</a></li>
                                            </ul>
                                            <h5 class="top-margin">TOP REGION</h5>
                                            <ul>
                                                <li><a href="#">ASIA</a></li>
                                                <li><a href="#">AFRICA</a></li>
                                                <li><a href="#">EAST ASIA</a></li>
                                                <li><a href="#">WESTERN EUROPE</a></li>
                                                <li><a href="#">SOUTH AMERICA</a></li>
                                                <li><a href="#">LATIN AMERICA</a></li>
                                            </ul>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <h5>TOP REGION</h5>
                                            <ul>
                                                <li><a href="#">ASIA</a></li>
                                                <li><a href="#">AFRICA</a></li>
                                                <li><a href="#">EAST ASIA</a></li>
                                                <li><a href="#">WESTERN EUROPE</a></li>
                                                <li><a href="#">SOUTH AMERICA</a></li>
                                                <li><a href="#">LATIN AMERICA</a></li>
                                            </ul>
                                            <h5 class="top-margin">TOP DESTINATION</h5>
                                            <ul>
                                                <li><a href="#">BENGLURU</a></li>
                                                <li><a href="#">CHENNAI</a></li>
                                                <li><a href="#">CALIFORNIA</a></li>
                                                <li><a href="#">GOA</a></li>
                                                <li><a href="#">NEW YORK</a></li>
                                                <li><a href="#">NEW DELHI</a></li>
                                            </ul>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <div class="img-div clear-top">
                                                <img src="assets/images/tour3.jpg" alt="cruise">
                                                <div class="overlay">
                                                    <h5>20% OFF</h5>
                                                    <p>On Paris HOTELS</p>
                                                    <a href="#">KNOW MORE</a>
                                                </div>
                                            </div>
                                            <div class="img-div">
                                                <img src="assets/images/tour1.jpg" alt="cruise">
                                                <div class="overlay">
                                                    <h5>20% OFF</h5>
                                                    <p>On Paris HOTELS</p>
                                                    <a href="#">KNOW MORE</a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </li>
                                <li class="dropdown mega">
                                    <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-plane"></i> FLIGHTS <i class="fa fa-caret-down"></i></a>
                                    <ul class="dropdown-menu mega-menu">
                                        <li class="col-md-3 col-sm-3 desc">
                                            <h4>FLIGHTS</h4>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <h5>PAGES</h5>
                                            <ul>
                                                <li><a href="flight.html">FLIGHT SEARCH</a></li>
                                                <li><a href="flight-list-2.html">FLIGHT LIST</a></li>
                                                <li><a href="flight-list.html">FLIGHT LIST 2</a></li>
                                                <li><a href="flight-booking.html">FLIGHT BOOKING</a></li>
                                            </ul>
                                            <div class="img-div">
                                                <img src="assets/images/tour2.jpg" alt="cruise">
                                                <div class="overlay">
                                                    <h5>30% OFF</h5>
                                                    <p>On BANGKOK FLIGHTS</p>
                                                    <a href="#">KNOW MORE</a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <h5>TOP REGION</h5>
                                            <ul>
                                                <li><a href="#">ASIA</a></li>
                                                <li><a href="#">AFRICA</a></li>
                                                <li><a href="#">EAST ASIA</a></li>
                                                <li><a href="#">WESTERN EUROPE</a></li>
                                            </ul>
                                            <div class="img-div">
                                                <img src="assets/images/tour3.jpg" alt="cruise">
                                                <div class="overlay">
                                                    <h5>10% OFF</h5>
                                                    <p>On DUBAI FLIGHTS</p>
                                                    <a href="#">KNOW MORE</a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <h5>CHEAP FLIGHTS TO</h5>
                                            <ul>
                                                <li><a href="#">BENGLURU</a></li>
                                                <li><a href="#">CHENNAI</a></li>
                                                <li><a href="#">CALIFORNIA</a></li>
                                                <li><a href="#">GOA</a></li>
                                            </ul>
                                            <div class="img-div">
                                                <img src="assets/images/tour1.jpg" alt="cruise">
                                                <div class="overlay">
                                                    <h5>20% OFF</h5>
                                                    <p>On Paris Flights</p>
                                                    <a href="#">KNOW MORE</a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </li>
                                <li class="dropdown mega">
                                    <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-suitcase"></i> TOURS <i class="fa fa-caret-down"></i></a>
                                    <ul class="dropdown-menu mega-menu">
                                        <li class="col-md-3 col-sm-3 desc">
                                            <h4>TOURS</h4>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <h5>PAGES</h5>
                                            <ul>
                                                <li><a href="holiday.html">TOUR SEARCH</a></li><li><a href="holidays-list.html">TOUR LIST</a></li>
                                                <li><a href="holidays-grid.html">TOUR GRID</a></li>
                                                <li><a href="holidays-grid-2.html">TOUR GRID 2</a></li>
                                                <li><a href="holiday-detail-2.html">TOUR DETAIL</a></li>
                                                <li><a href="holiday-detail.html">TOUR DETAIL 2</a></li>
                                                <li><a href="holiday-booking.html">TOUR BOOKING</a></li>
                                                <li><a href="holiday-booking-2.html">TOUR BOOKING 2</a></li>
                                            </ul>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <h5>TOP REGION</h5>
                                            <ul>
                                                <li><a href="#">ASIA</a></li>
                                                <li><a href="#">AFRICA</a></li>
                                                <li><a href="#">EAST ASIA</a></li>
                                                <li><a href="#">WESTERN EUROPE</a></li>
                                                <li><a href="#">SOUTH AMERICA</a></li>
                                                <li><a href="#">LATIN AMERICA</a></li>
                                                <li><a href="#">ASIA</a></li>
                                            </ul>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <div class="img-div clear-top">
                                                <img src="assets/images/tour1.jpg" alt="cruise">
                                                <div class="overlay">
                                                    <h5>DUBAI</h5>
                                                    <p>Starting From $599</p>
                                                    <a href="#">KNOW MORE</a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </li>
                                <li class="dropdown mega">
                                    <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-taxi"></i> CARS <i class="fa fa-caret-down"></i></a>
                                    <ul class="dropdown-menu mega-menu">
                                        <li class="col-md-3 col-sm-3 desc">
                                            <h4>CARS</h4>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <h5>PAGES</h5>
                                            <ul>
                                                <li><a href="car.html">CAR SEARCH</a></li>
                                                <li><a href="car-grid-3.html">CAR GRID</a></li>
                                                <li><a href="car-list.html">CAR LIST</a></li>
                                                <li><a href="car-detailed-2.html">CAR DETAIL</a></li>
                                                <li><a href="car-detailed.html">CAR DETAIL 2</a></li>
                                            </ul>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <h5>TOP REGION</h5>
                                            <ul>
                                                <li><a href="#">ASIA</a></li>
                                                <li><a href="#">AFRICA</a></li>
                                                <li><a href="#">EAST ASIA</a></li>
                                                <li><a href="#">WESTERN EUROPE</a></li>
                                                <li><a href="#">SOUTH AMERICA</a></li>
                                            </ul>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <div class="img-div clear-top">
                                                <img src="assets/images/tour3.jpg" alt="cruise">
                                                <div class="overlay">
                                                    <h5>DUBAI</h5>
                                                    <p>Starting From $599</p>
                                                    <a href="#">KNOW MORE</a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </li>
                                <li class="dropdown mega">
                                    <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-ship"></i> CRUISE <i class="fa fa-caret-down"></i></a>
                                    <ul class="dropdown-menu mega-menu">
                                        <li class="col-md-3 col-sm-3 desc">
                                            <h4>CRUISES</h4>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <h5>PAGES</h5>
                                            <ul>
                                                <li><a href="cruise.html">CRUISE SEARCH</a></li>
                                                <li><a href="cruise-list.html">CRUISE LIST</a></li>
                                                <li><a href="cruise-detail-2.html">CRUISE DETAIL</a></li>
                                                <li><a href="cruise-detail.html">CRUISE DETAIL 2</a></li>
                                            </ul>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <h5>TOP REGION</h5>
                                            <ul>
                                                <li><a href="#">ASIA</a></li>
                                                <li><a href="#">AFRICA</a></li>
                                                <li><a href="#">EAST ASIA</a></li>
                                                <li><a href="#">WESTERN EUROPE</a></li>
                                                <li><a href="#">SOUTH AMERICA</a></li>
                                            </ul>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <div class="img-div clear-top">
                                                <img src="assets/images/tour3.jpg" alt="cruise">
                                                <div class="overlay">
                                                    <h5>DUBAI</h5>
                                                    <p>Starting From $599</p>
                                                    <a href="#">KNOW MORE</a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </li>
                                <li class="dropdown mega">
                                    <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-file"></i> PAGES <i class="fa fa-caret-down"></i></a>
                                    <ul class="dropdown-menu mega-menu">
                                        <li class="col-md-3 col-sm-4 links">
                                            <h5>BLOG PAGES</h5>
                                            <ul>
                                                <li><a href="blog-right-sidebar.html">RIGHT SIDEBAR</a></li>
                                                <li><a href="blog-left-sidebar.html">LEFT SIDEBAR</a></li>
                                                <li><a href="blog-full-width.html">FULL WIDTH</a></li>
                                                <li><a href="single-right-sidebar.html">SINGLE RIGHT SIDEBAR</a></li>
                                                <li><a href="single-left-sidebar.html">SINGLE LEFT SIDEBAR</a></li>
                                                <li><a href="single-full-width.html">SINGLE FULL WIDTH</a></li>
                                            </ul>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <h5>SPECIAL PAGES</h5>
                                            <ul>
                                                <li><a href="coming-soon.html">COMING SOON</a></li>
                                                <li><a href="404.html">404</a></li>
                                                <li><a href="404-2.html">404 2</a></li>
                                                <li><a href="loading.html">LOADING</a></li>
                                                <li><a href="login.html">LOGIN/REGSITER</a></li>
                                                <li><a href="elements.html">ELEMENTS</a></li>
                                                <li><a href="thank-you.html">COMING SOON</a></li>
                                            </ul>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <h5>EXTRA PAGES</h5>
                                            <ul>
                                                <li><a href="user-profile.html">USER DASHBOARD</a></li>
                                                <li><a href="gallery-3column.html">GALLERY 3 COLUMN</a></li>
                                                <li><a href="gallery-4column.html">GALLERY 4 COLUMN</a></li>
                                                <li><a href="about-us.html">ABOUT US</a></li>
                                                <li><a href="contact-us.html">CONTACT US</a></li>
                                            </ul>
                                        </li>
                                        <li class="col-md-3 col-sm-4 links">
                                            <div class="img-div clear-top">
                                                <img src="assets/images/tour1.jpg" alt="cruise">
                                                <div class="overlay">
                                                    <h5>DUBAI</h5>
                                                    <p>Starting From $599</p>
                                                    <a href="#">KNOW MORE</a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </li>
                            </ul>
                        </div>
                        <!-- END: NAVIGATION -->
                    </div>
                    <!--END: NAV-CONTAINER -->
                </div>
            </div>
            <!-- END: HEADER -->
        </div>
    </div>