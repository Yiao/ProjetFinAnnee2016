package com.supinfo.transport.servlet;

import com.supinfo.transport.dao.TicketDAO;
import com.supinfo.transport.dao.UsersDAO;
import com.supinfo.transport.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by Khalil on 07/05/2016.
 */
// a remetre le filter

@WebServlet(name = "UserTicketsServlet",urlPatterns = "/auth/myTravels")
public class UserTicketsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //user
        TicketDAO reservationDAO =new TicketDAO();
        UsersDAO userDAO =new UsersDAO();
        Users myUser =new Users();
        //chercher lutilisateur
        HttpSession session = request.getSession();
        String account  = (String) session.getAttribute("username");
        //recuperer les voyages de lutilisateur
        myUser = userDAO.search(account);
        List myReservations =reservationDAO.getMyReservations(myUser.getId());
        request.setAttribute("myReservationPanel",myReservations);

        //rajouter servlet si besoin
        this.getServletContext().getRequestDispatcher("/myTravels.jsp").forward(request, response);
    }
}
