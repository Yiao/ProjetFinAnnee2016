package com.supinfo.transport.servlet;

import com.supinfo.transport.dao.UsersDAO;
import com.supinfo.transport.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.Console;
import java.io.IOException;

/**
 * Created by sya on 3/4/2016.
 */
@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UsersDAO searchUser = new UsersDAO();

        try {
            Users userLogin = searchUser.search(username);
            if (userLogin.getUsername().equals(username)  && userLogin.getPassword().equals(password))
            {
                //on recupere ce que on a entre dans username et password
                //on les met dans un session
                HttpSession loginSession = request.getSession();
                loginSession.setAttribute("username",username);
                loginSession.setAttribute("password",password);
                response.sendRedirect("/index.jsp");
            }
            else
            {
                response.sendRedirect("/login.jsp");
            }
        }
        catch (Exception ex)
        {
            response.sendRedirect("/login.jsp");
            //Todo génere exception quand on arrive pas trouver le utilisateur
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/login.jsp");
    }
}
