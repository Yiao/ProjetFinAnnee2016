package com.supinfo.transport.servlet;

import com.supinfo.transport.dao.UsersDAO;
import com.supinfo.transport.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Objects;

/**
 * Created by sya on 5/9/2016.
 */
@WebServlet(name = "UserProfileServlet",urlPatterns="/auth/userProfile")
public class UserProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = "";
        String newpassword = "";
        String oldpassword = "";
        String confirmpassword = "";
        String firstname ="";
        String lastname ="";
        String email = "";
        String password= "";
        int age;

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpSession sessionIn =  httpRequest.getSession();
        username = (String) sessionIn.getAttribute("username");
        password = (String) sessionIn.getAttribute("password");

        firstname  = (String) request.getParameter("newFirstName");
        lastname = (String) request.getParameter("newLastName");
        newpassword = (String) request.getParameter("newPassword");
        if (!Objects.equals(request.getParameter("newAge"), "")){

            age = Integer.parseInt(request.getParameter("newAge"));
        }
        else
        {
            UsersDAO userDAO = new UsersDAO();
            age = userDAO.search(username).getAge();
        }
        email = (String) request.getParameter("newEmail");
        confirmpassword = (String) request.getParameter("newConfirmPassword");
        oldpassword = (String) request.getParameter("oldPassword");


        if (oldpassword.equals(password))
        {

            if (newpassword.equals(confirmpassword))
            {
                UsersDAO userDAO = new UsersDAO();
                userDAO.update(username,firstname,lastname,age,email,newpassword);
                response.sendRedirect("/index.jsp");
            }
            else
            {
                response.sendRedirect("/errorPassword.jsp");
            }
        }
        else
        {
            response.sendRedirect("/errorPassword.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String account = "";
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpSession sessionIn = httpRequest.getSession();
        account = (String) sessionIn.getAttribute("username");

        UsersDAO rearchUser = new UsersDAO();
        Users userLogin = rearchUser.search(account);


        request.setAttribute("user", userLogin);

        this.getServletContext().getRequestDispatcher("/userProfile.jsp").forward(request, response);
    }
}
