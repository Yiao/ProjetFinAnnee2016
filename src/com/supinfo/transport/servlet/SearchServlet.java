package com.supinfo.transport.servlet;

import com.supinfo.transport.dao.VoyageDAO;
import com.supinfo.transport.entity.Voyage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Khalil on 05/05/2016.
 */
@WebServlet(name = "SearchServlet" ,urlPatterns = "/search")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        VoyageDAO myVoyageDAO = new VoyageDAO();
    //    Voyage MyVoyage = new Voyage();
        String thisDeparture ="";
        String thisArrival ="";
        String thisDateDeparture="";
        Date dateDeparture =null;
       // float thisDepartureHour = thisDateDeparture.getTime();

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        thisDeparture = request.getParameter("departure_city");
        thisArrival =request.getParameter("destination_city");
        //get date

        try
        {
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            thisDateDeparture = request.getParameter("departure_date");
            dateDeparture =sdf.parse(thisDateDeparture);

            float thisDepartureHour = dateDeparture.getTime();
            System.out.println("time" + thisDepartureHour);
        }
        catch (ParseException e1) {
            System.out.println("la date entrée est fausse, retapez la date");
        }

        List<Voyage> mySearchResults = myVoyageDAO.searchVoyage(thisDeparture, thisArrival, dateDeparture);
        System.out.print("working");
        request.setAttribute("tripSearch", mySearchResults);
        this.getServletContext().getRequestDispatcher("/results.jsp").forward(request, response);

        for (final Voyage v : mySearchResults)
        {
            System.out.print(v.getIdVoyage() + "trip departure " + v.getDepartureVoyage()+"arrival "+v.getArrivalVoyage() +"date" + v.getDepartureDate());
        }




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
