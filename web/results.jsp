
<%@ page import="com.supinfo.transport.entity.Voyage" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp"%>

<section id="more-pages" class="section wide-fat">
    <div class="container">

        <div class="row">
            <div class="contents col-md-12 col-lg-12">
                <div class="row box-row travel-essentials table-row">
                    <%--Todo Remplacer par for et chercher les voyages suivant un point depart / point darrivé--%>
                    <%-- a changer en jstl car l'affichage c moche comme ça  --%>.
                    <%
                        //out.println("<td>" + "<a href=\"/AddToPanel?thisTrip=" + myTripResult.getIdTrip()+ "\" class=\"button mini\">book</a>"+"<td/>");

                        try {
                            @SuppressWarnings("unchecked")
                            List<Voyage> myTripList = (List<Voyage>)request.getAttribute("tripSearch");
                            //Pas de resultats !
                            if (myTripList.size()==0 || myTripList.isEmpty())
                            {
                                out.print(" <h1> Sorry :( ! no Results were Found For you're search try to enter correct campus names : Exemple orleans </h1>");
                            }
                            else
                            {

                                for(final Voyage myTripResult :myTripList)
                                {


                                    out.print("<div class=\"col-sm-12\">");


                                    out.print( " <div class=\"box-block\">"+" <div class=\"media\">"+"<a class=\"media-object pull-left\" href=\"#\"><img class=\"responsive-image\" src=\"/images/content/featured-tour-1.png\" alt=\"\"/></a>");
                                    out.print(" <div class=\"media-action pull-right\">" + "<span class=\"price\"><small>Per Seat </small> $" + myTripResult.getDepartureDate() + "</span><br/>" + "<a href=\"/AddToPanel?thisTrip=" + myTripResult.getIdVoyage()+ "\" class=\"button mini\"> Book</a>");
                                    out.print("</div>" + "<p> Results to Trips Going From : " + "<strong>"+myTripResult.getDepartureVoyage().getStationName()+"</strong>" + "</p>" + "<div class=\"media-body\" >");
                                    out.print("<div class=\"media-body\" >");
                                    out.print(" <h3  class=\"media-heading\"> Destination :" + myTripResult.getArrivalVoyage().getStationName()+ "</h3>");
                                    out.print(" Transport  :" + myTripResult.getTrain() + "</p>" + " </div>" + " </div>" + " </div>" + " </div>"+"</div>");

                                }

                            }
                        }
                        catch (Exception ex)
                        {
                            System.out.print(ex.getMessage());
                        }
                    %>
                </div>
            </div>
        </div>
    </div>

</section><!-- /#more-pages.section -->

<%@include file="footer.jsp"%>