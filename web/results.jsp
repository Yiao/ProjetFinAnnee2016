
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
                                <%
                                    //search results are here
                                    String myDestination ="";
                                    String myDeparture ="";
                                    long myIdTrip = 0 ;
                                    long myTrainNumber = 0 ;
                                    try
                                    {
                                        @SuppressWarnings("unchecked")
                                        List<Voyage> myTripList = (List<Voyage>)request.getAttribute("tripSearch");
                                        //no results
                                        if (myTripList.size()==0 || myTripList.isEmpty())
                                        {
                                            out.print(" <h1> Sorry :( ! no Results were Found For you're search try to enter correct town names : Exemple orleans </h1>");
                                        }
                                        else
                                        {
                                            for(final Voyage myTripResult :myTripList )
                                            {
                                                myDeparture=  myTripResult.getDepartureVoyage().getStationName();
                                                myDestination= myTripResult.getArrivalVoyage().getStationName();
                                                myIdTrip= myTripResult.getIdVoyage();
                                                myTrainNumber=  myTripResult.getTrain().getIdTrain();
                                            }
                                        }
                                    }
                                    catch (Exception ex)
                                    {
                                        out.print(ex.getMessage());
                                    }
                                %>
                                <div class="hotel-header">
                                    <h5>Search Results <span><i class="fa fa-star colored"></i><i class="fa fa-star colored"></i><i class="fa fa-star colored"></i><i class="fa fa-star colored"></i><i class="fa fa-star-o colored"></i></span></h5>

                                </div>
                                <div class="hotel-facility">
                                    <p><i class="fa fa-wifi" title="Free Wifi"></i><i class="fa fa-bed" title="Luxury Bedroom"></i><i class="fa fa-taxi" title="Transportation"></i><i class="fa fa-beer" title="Bar"></i><i class="fa fa-cutlery" title="Restaurant"></i></p>
                                </div>
                                <div class="hotel-desc">
                                    <p>Departure : <%=myDeparture%> <br/>        Destination : <%=myDestination%>    <br/>          Train number :<%=myTrainNumber%> </p>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix visible-sm-block"></div>
                        <div class="col-md-2 rating-price-box text-center clear-padding">
                            <div class="rating-box">
                                <div class="tripadvisor-rating">
                                    <img src="assets/images/tripadvisor.png" alt="cruise"><span>4.5/5.0</span>
                                </div>

                            </div>
                            <div class="room-book-box">
                                <div class="price">
                                    <h5>put price here ?</h5>
                                </div>
                                <div class="book">
                                    <a href=\"/AddToPanel?thisTrip="<%=myIdTrip%>>BOOK</a>
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