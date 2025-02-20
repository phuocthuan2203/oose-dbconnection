package org.example.dbconnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/calculate")
public class CalculationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Data model class to hold our number and calculation result
    public static class Calculation {
        private int id;
        private double value1;
        private double value2;
        private double sum;

        public Calculation(int id, double value1, double value2, double sum) {
            this.id = id;
            this.value1 = value1;
            this.value2 = value2;
            this.sum = sum;
        }
        // getters (and setters if needed)
        public int getId() { return id; }
        public double getValue1() { return value1; }
        public double getValue2() { return value2; }
        public double getSum() { return sum; }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Calculation> calculations = new ArrayList<>();

        // Retrieve data from the numbers table
        String sql = "SELECT id, value1, value2 FROM numbers";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                int id = rs.getInt("id");
                double value1 = rs.getDouble("value1");
                double value2 = rs.getDouble("value2");
                double sum = value1 + value2; // Example calculation: sum of the two values
                calculations.add(new Calculation(id, value1, value2, sum));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Set the result list in the request and forward to JSP
        request.setAttribute("calculations", calculations);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}
