package com.supinfo.transport.servlet;

import com.supinfo.transport.dao.TicketDAO;
import com.supinfo.transport.dao.UsersDAO;
import com.supinfo.transport.dao.VoyageDAO;
import com.supinfo.transport.entity.Users;
import com.supinfo.transport.entity.Voyage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Khalil on 07/05/2016.
 */
//filter a remetre
@WebServlet(name = "AddToTicketServlet" ,urlPatterns="/AddToPanel")
public class AddToTicketServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        VoyageDAO myTripDAO = new VoyageDAO();
        UsersDAO myUserDAO = new UsersDAO();
        TicketDAO myReservationDAO = new TicketDAO();
        Users thisUser = new Users();
        Voyage thisTrip = new Voyage();
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        //associer une trip a un utilisateur
        //recuperer le voyage selectionné
        String tripId = request.getParameter("thisTrip");
        thisTrip=myTripDAO.search(Long.valueOf(tripId));
        //recuperer l'campusbooster de user connecté
        HttpSession sessionIn =  httpRequest.getSession();
        String myUserAccount = (String)sessionIn.getAttribute("username");
        thisUser= myUserDAO.search(myUserAccount);
        //update la table Trip
        myReservationDAO.addReservation(thisUser,thisTrip);
        // MyTripDAO.updateTrip(thisUser,thisTrip);
        response.sendRedirect("/myTravels");

    }
}
