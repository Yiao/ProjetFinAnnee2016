package com.supinfo.transport.servlet;

import com.supinfo.transport.dao.UsersDAO;
import com.supinfo.transport.entity.Users;
import org.osgi.service.useradmin.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by sya on 3/4/2016.
 */
@WebServlet(name = "AddUserServlet", urlPatterns = "/register")
public class AddUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = "";
        String password = "";
        String firstname = "";
        String lastname = "";
        int age;
        String email = "";

        username = request.getParameter("newusername");
        password = request.getParameter("newpassword");
        firstname = request.getParameter("userFirstName");
        lastname = request.getParameter("userLastName");
        age = Integer.parseInt(request.getParameter("userAge"));
        email = request.getParameter("userEmail");



        Users newUser = new Users();
        newUser.setUsername(username);
        newUser.setPassword(password);
        newUser.setFirstName(firstname);
        newUser.setLastName(lastname);
        newUser.setAge(age);
        newUser.setEmail(email);

        UsersDAO usersDAO = new UsersDAO();
        usersDAO.create(newUser);

        response.sendRedirect("/index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
