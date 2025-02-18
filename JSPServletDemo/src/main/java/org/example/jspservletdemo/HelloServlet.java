package org.example.jspservletdemo;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "HelloServlet", urlPatterns = {"/hello"})
public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("HelloServlet: doGet() called.");
        request.setAttribute("message", "Hello from the Servlet!");
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    public void init() throws ServletException {
        super.init();
        System.out.println("HelloServlet: init() called.");
        // Optionally, read configuration parameters here
    }

    @Override
    public void destroy() {
        System.out.println("HelloServlet: destroy() called.");
        super.destroy();
    }
}