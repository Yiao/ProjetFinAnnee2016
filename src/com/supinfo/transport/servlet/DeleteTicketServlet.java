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
 * Created by Khalil on 11/05/2016.
 */
@WebServlet(name = "DeleteTicketServlet" , urlPatterns = ("/auth/DeleteReservation"))
public class DeleteTicketServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TripDAO MyTripDAO = new TripDAO();
        TicketDAO MyTicketDao = new TicketDAO();

        String reservationId = request.getParameter("thisReservation");

        // MyTripDAO.suppTripFromUser(Long.valueOf(reservationId));
        MyTicketDao.delete(Long.valueOf(reservationId));
        response.sendRedirect("/auth/myTravels");

    }
}
