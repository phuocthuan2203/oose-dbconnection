<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.dbconnection.CalculationServlet" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculation Results</title>
</head>
<body>
<h1>Calculation Results</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Value 1</th>
        <th>Value 2</th>
        <th>Sum</th>
    </tr>
    <%
        List<CalculationServlet.Calculation> calculations = (List<CalculationServlet.Calculation>) request.getAttribute("calculations");
        if (calculations != null) {
            for (CalculationServlet.Calculation calc : calculations) {
    %>
    <tr>
        <td><%= calc.getId() %></td>
        <td><%= calc.getValue1() %></td>
        <td><%= calc.getValue2() %></td>
        <td><%= calc.getSum() %></td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="4">No data found.</td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>