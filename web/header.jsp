<%@ page import="java.util.Objects" %><%--
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

    <link href="/assets/css/animate.min.css" rel="stylesheet">
    <link href="/assets/css/bootstrap-select.min.css" rel="stylesheet">
    <link href="/assets/css/owl.carousel.css" rel="stylesheet">
    <link href="/assets/css/owl-carousel-theme.css" rel="stylesheet">
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="/assets/css/flexslider.css" rel="stylesheet" media="screen">
    <link href="/assets/css/style.css" rel="stylesheet" media="screen">
    <!-- LIGHT -->
    <link rel="stylesheet" type="text/css" href="/assets/css/dummy.html" id="select-style">
    <link href="/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <link href="/assets/css/light.css" rel="stylesheet" media="screen">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,600' rel='stylesheet' type='text/css'>

</head>
<body class="load-full-screen">
    <!-- BEGIN: PRELOADER -->
    <div id="loader" class="load-full-screen">
        <div class="loading-animation">
            <span><i class="fa fa-plane"></i></span>
            <span><i class="fa fa-bed"></i></span>
            <span><i class="fa fa-ship"></i></span>
            <span><i class="fa fa-suitcase"></i></span>
        </div>
    </div>

    <!--le slider-->
    <div id="supersized" class="quality" style="display: block;">
        <a target="_blank" class="prevslide" style="display: block; opacity: 1;">
            <img src="assets/images/holiday-slide4.jpg" style="height: 995px; width: 796px; left: 514.5px; top: 0px;">
        </a>
        <a target="_blank" class="activeslide" style="display: block; opacity: 1;">
            <img src="assets/images/holiday-slide3.jpg" style="width: 1825px; height: 1222.75px; left: 0px; top: -114px;">
        </a>
        <a target="_blank"><img src="assets/images/hotel-slide.jpg" style="width: 1825px; height: 1222.75px; left: 0px; top: -114px;">
        </a>
    </div>
    <!-- END: PRELOADER -->


    <!-- BEGIN: SITE-WRAPPER -->
    <%--<div class="row header-top">--%>
        <%--<div class="container clear-padding">--%>
            <%--<div class="navbar-contact">--%>
                <%--<div class="col-md-7 col-sm-6 clear-padding" style="float : left;">--%>
                    <%--<a href="#" class="transition-effect"><i class="fa fa-phone"></i> (+33) 1234567890</a>--%>
                    <%--<a href="#" class="transition-effect"><i class="fa fa-envelope-o"></i> Yiao.SUN@supinfo.com</a>--%>
                <%--</div>--%>
                <%--<div class="col-md-5 col-sm-6 clear-padding search-box">--%>

                    <%--&lt;%&ndash;Todo login&ndash;%&gt;--%>
                    <%--<div class="col-md-6 col-xs-7 clear-padding user-logged">--%>
                        <%--&lt;%&ndash;%>


                            <%--if (request instanceof HttpServletRequest)--%>
                            <%--{--%>
                                <%--String username = "";--%>
                                <%--HttpServletRequest httpRequest = (HttpServletRequest) request;--%>
                                <%--HttpSession sessionIn =  httpRequest.getSession();--%>
                                <%--username = (String) sessionIn.getAttribute("username");--%>
                                <%--if (username!=""&&username!=null)--%>
                                <%--{--%>
                                    <%--out.println(--%>
                                            <%--"<a href=\"/auth/userProfileServlet\" class=\"transition-effect\"> Hi " + username + "</a>");--%>
                                <%--}--%>
                                <%--else--%>
                                <%--{--%>
                                    <%--out.println(--%>
                                            <%--"<a href=\"/login\" class=\"transition-effect\">" + "Login" + "</a>"--%>
                                    <%--);--%>
                                <%--}--%>
                            <%--}--%>
                        <%--%>--%>

                        <%--&lt;%&ndash;<a href="/login" class="transition-effect">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;&lt;%&ndash;<img src="assets/images/user.jpg" alt="cruise">&ndash;%&gt;&ndash;%&gt;--%>
                            <%--&lt;%&ndash;Login&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</a>  &ndash;%&gt;--%>

                        <%--&lt;%&ndash;<a href="#" class="transition-effect">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<img src="assets/images/user.jpg" alt="cruise">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;Hi, Lenore&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
                        <%--<a href="/logout" class="transition-effect">--%>
                            <%--<i class="fa fa-sign-out"></i>Sign Out--%>
                        <%--</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
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
                            <a class="navbar-brand logo" href="/index.jsp">SUPINFOTRAIN</a>
                        </div>

                        <!-- BEGIN: NAVIGATION -->
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="dropdown">
                                    <a class="dropdown-toggle" href="#"><i class="fa fa-home"></i> HOME </a>
                                </li>
                                <li class="dropdown mega">
                                    <a class="dropdown-toggle" href="#"><i class="fa fa-bed"></i> HOTELS </a>
                                    <div class="clearfix"></div>
                                </li>
                                <li class="dropdown mega">
                                    <a class="dropdown-toggle" href="#"><i class="fa fa-plane"></i> FLIGHTS </a>
                                    <div class="clearfix"></div>
                                </li>
                                <li class="dropdown mega">
                                    <a class="dropdown-toggle" href="#"><i class="fa fa-suitcase"></i> TOURS </a>
                                    <div class="clearfix"></div>
                                </li>
                                <li class="dropdown mega">
                                    <a class="dropdown-toggle" href="#"><i class="fa fa-taxi"></i> CARS </a>
                                    <div class="clearfix"></div>
                                </li>
                                <li class="dropdown mega">
                                    <a class="dropdown-toggle" href="#"><i class="fa fa-ship"></i> CRUISE </a>
                                    <div class="clearfix"></div>
                                </li>

                                <%
                                    if (request instanceof HttpServletRequest)
                                    {
                                        String username = "";
                                        HttpServletRequest httpRequest = (HttpServletRequest) request;
                                        HttpSession sessionIn =  httpRequest.getSession();
                                        username = (String) sessionIn.getAttribute("username");
                                        if (!Objects.equals(username, "") && username!= null)
                                        {
                                            out.println("<li class=\"dropdown mega\">" +
                                                    "<a class=\"dropdown-toggle\" href=\"/logout\">" +
                                                    "<i class=\"fa fa-file\"></i> LOGOUT "+ username + "</a>" +
                                                    "<div class=\"clearfix\"></div></li>");
                                        }
                                        else
                                        {
                                            out.println("<li class=\"dropdown mega\">" +
                                                    "<a class=\"dropdown-toggle\" href=\"/login\">" +
                                                    "<i class=\"fa fa-file\"></i> LOGIN </a>" +
                                                    "<div class=\"clearfix\"></div></li>");
                                        }
                                    }
                                %>
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