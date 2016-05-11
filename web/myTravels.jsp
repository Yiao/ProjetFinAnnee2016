<%@ page import="com.supinfo.transport.entity.Ticket" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
 User: Khalil
  Date: 19/03/2016
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>
<section class="page-head-holder">
    <div class="container">

        <div class="col-xs-12 col-sm-6">

            <h2>My Travels</h2>

        </div>
    </div>
</section>

<section id="more-pages" class="section wide-fat">
    <div class="container">
        <div class="row">
            <div class="contents col-md-12 col-lg-12">
                <div class="row box-row travel-essentials table-row">
                    <%--Todo Remplacer par for et chercher les informations dans la database--%>
                    <%-- a changer en jstl car l'affichage c moche comme ça  --%>

                    <%
                        try
                        {
                            @SuppressWarnings("unchecked")
                            List<Ticket> myReservationPanel = (List<Ticket>)request.getAttribute("myReservationPanel");
                            for(final Ticket reservation :myReservationPanel)
                            {
                                out.print("<div class=\"col-sm-12\" >" +
                                        " <div class=\"box-block\">"+" <div class=\"media\">"+"<a class=\"media-object pull-left\" href=\"#\"><img class=\"responsive-image\" src=\"/images/content/featured-tour-1.png\" alt=\"\"/></a>"
                                        +" <div class=\"media-action pull-right\">"+"<span class=\"pr" +
                                        "ice\"><small>Per Seat</small> $"+reservation.getPrice()+"<br/><a href=\"/auth/DeleteReservation?thisReservation=" + reservation.getId()+ "\" class=\"button mini\">Del</a>"+
                                        "</div>"+"<p>Departure: "+ reservation.getVoyage().getDepartureVoyage() +"</p>"+"<div class=\"media-body\" >"+
                                        "<div class=\"media-body\" >"+"<form action=\"SearchTrip\" method=\"post\">"+" <h3 class=\"media-heading\">destination :"+reservation.getVoyage().getArrivalVoyage()+"</h3>"+
                                        "*Transport :"+reservation.getVoyage().getTrain() + "</p>"+" </div>"+" </div>"+" </div>"+" </div>"+" </div>");
                            }

                        }
                        catch (Exception e)
                        {
                            out.print(e.getMessage());
                        }

                    %>
                </div>
            </div>
        </div>
    </div>
</section><!-- /#more-pages.section -->
<%@ include file="footer.jsp"%>