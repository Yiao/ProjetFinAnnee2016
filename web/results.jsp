
<%@ page import="com.supinfo.transport.entity.Voyage" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp"%>

    <div class="row">
        <div class="switchable col-md-12 clear-padding">
            <div class="container col-md-11 col-lg-11">
                <div class="col-md-9 hotel-listing">
                <%--//Todo Nouvelle page--%>
                <div  class="hotel-list-view">
                    <div class="wrapper">
                        <div class="col-md-4 col-sm-6 switch-img clear-padding">
                            <img src="assets/images/offer3.jpg" alt="cruise">
                        </div>
                        <div class="col-md-6 col-sm-6 hotel-info">
                            <div>
                                <div class="hotel-header">
                                    <h5>Hotel Residency <span><i class="fa fa-star colored"></i><i class="fa fa-star colored"></i><i class="fa fa-star colored"></i><i class="fa fa-star colored"></i><i class="fa fa-star-o colored"></i></span></h5>
                                    <p><i class="fa fa-map-marker"></i>Mall Road, Shimla <i class="fa fa-phone"></i>(+91) 123456789</p>
                                </div>
                                <div class="hotel-facility">
                                    <p><i class="fa fa-wifi" title="Free Wifi"></i><i class="fa fa-bed" title="Luxury Bedroom"></i><i class="fa fa-taxi" title="Transportation"></i><i class="fa fa-beer" title="Bar"></i><i class="fa fa-cutlery" title="Restaurant"></i></p>
                                </div>
                                <div class="hotel-desc">
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix visible-sm-block"></div>
                        <div class="col-md-2 rating-price-box text-center clear-padding">
                            <div class="rating-box">
                                <div class="tripadvisor-rating">
                                    <img src="assets/images/tripadvisor.png" alt="cruise"><span>4.5/5.0</span>
                                </div>
                                <div class="user-rating">
                                    <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i>
                                    <span>128 Guest Reviews.</span>
                                </div>
                            </div>
                            <div class="room-book-box">
                                <div class="price">
                                    <h5>$50 Avg/Night</h5>
                                </div>
                                <div class="book">
                                    <a href="#">BOOK</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

            <%--<div class="row box-row travel-essentials table-row">--%>
                <%--&lt;%&ndash;Todo Remplacer par for et chercher les voyages suivant un point depart / point darrivé&ndash;%&gt;--%>
                <%--&lt;%&ndash; a changer en jstl car l'affichage c moche comme ça  &ndash;%&gt;.--%>
                <%--<%--%>
                    <%--//out.println("<td>" + "<a href=\"/AddToPanel?thisTrip=" + myTripResult.getIdTrip()+ "\" class=\"button mini\">book</a>"+"<td/>");--%>

                    <%--try {--%>
                        <%--@SuppressWarnings("unchecked")--%>
                        <%--List<Voyage> myTripList = (List<Voyage>)request.getAttribute("tripSearch");--%>
                        <%--//Pas de resultats !--%>
                        <%--if (myTripList.size()==0 || myTripList.isEmpty())--%>
                        <%--{--%>
                            <%--out.print(" <h1> Sorry :( ! no Results were Found For you're search try to enter correct campus names : Exemple orleans </h1>");--%>
                        <%--}--%>
                        <%--else--%>
                        <%--{--%>

                            <%--for(final Voyage myTripResult :myTripList)--%>
                            <%--{--%>


                                <%--out.print("<div class=\"col-sm-12\">");--%>


                                <%--out.print( " <div class=\"box-block\">"+" <div class=\"media\">"+"<a class=\"media-object pull-left\" href=\"#\"><img class=\"responsive-image\" src=\"/images/content/featured-tour-1.png\" alt=\"\"/></a>");--%>
                                <%--out.print(" <div class=\"media-action pull-right\">" + "<span class=\"price\"><small>Per Seat </small> $" + myTripResult.getDepartureDate() + "</span><br/>" + "<a href=\"/AddToPanel?thisTrip=" + myTripResult.getIdVoyage()+ "\" class=\"button mini\"> Book</a>");--%>
                                <%--out.print("</div>" + "<p> Results to Trips Going From : " + "<strong>"+myTripResult.getDepartureVoyage().getStationName()+"</strong>" + "</p>" + "<div class=\"media-body\" >");--%>
                                <%--out.print("<div class=\"media-body\" >");--%>
                                <%--out.print(" <h3  class=\"media-heading\"> Destination :" + myTripResult.getArrivalVoyage().getStationName()+ "</h3>");--%>
                                <%--out.print(" Transport  :" + myTripResult.getTrain() + "</p>" + " </div>" + " </div>" + " </div>" + " </div>"+"</div>");--%>

                            <%--}--%>

                        <%--}--%>
                    <%--}--%>
                    <%--catch (Exception ex)--%>
                    <%--{--%>
                        <%--System.out.print(ex.getMessage());--%>
                    <%--}--%>
                <%--%>--%>






            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>


<%@include file="footer.jsp"%>