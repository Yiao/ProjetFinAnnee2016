package com.supinfo.transport.servlet;

import com.supinfo.transport.dao.TicketDAO;
import com.supinfo.transport.entity.Ticket;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by User on 12/05/2016.
 */
@WebServlet(name = "ConfirmTicketServlet", urlPatterns = "/auth/ConfirmTicketServlet")
public class ConfirmTicketServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TripDAO MyTripDAO = new TripDAO();
        TicketDAO MyTicketDao = new TicketDAO();
        String reservationId = request.getParameter("thisReservation");
        // MyTripDAO.suppTripFromUser(Long.valueOf(reservationId));
        if (!checkThisTicket(Long.valueOf(reservationId)))
        {
            MyTicketDao.update(Long.valueOf(reservationId));
            response.sendRedirect("/auth/myTravels");
        }
        else
        {
            System.out.print("ticket already confirmed !");
        }


    }
    private  boolean checkThisTicket (long idTicket)
    {
        TicketDAO MyTicketDao = new TicketDAO();
        Ticket ticket =MyTicketDao.searchTicket(idTicket);
        if (ticket.isStatus()== true)
        {
            return true;
        }
        return false;
    }
}
