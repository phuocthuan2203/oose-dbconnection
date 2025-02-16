package com.example.demojspservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    // Hardcoded credentials for demonstration purposes
    private static final String USERNAME = "admin";
    private static final String PASSWORD = "password";

    // Handle GET requests
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirect the user to the login page (or a default action)
        response.sendRedirect("login.jsp");
    }

    // Handle POST requests
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Process the login form data
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (USERNAME.equals(username) && PASSWORD.equals(password)) {
            // Pass the username as a request attribute
            request.setAttribute("username", username);

            // Forward the request to welcome.jsp
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
        } else {
            response.sendRedirect("login.jsp?error=1");
        }
    }
}
