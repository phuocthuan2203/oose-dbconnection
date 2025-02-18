<%@ page language="java" %>
<%!
    // Lifecycle method: Initialization (called once)
    public void jspInit() {
        System.out.println("index.jsp: jspInit() called.");
    }

    // Lifecycle method: Destruction (called once when the JSP is removed)
    public void jspDestroy() {
        System.out.println("index.jsp: jspDestroy() called.");
    }
%>

<%
    // This log occurs each time the JSP is executed (i.e., for every HTTP request)
    System.out.println("index.jsp: Executing JSP (jspService) - page rendering.");
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>JSP and Servlet Demo</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
            margin-top: 50px;
        }
        h1 {
            font-size: 3rem;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        .container {
            background: rgba(255, 255, 255, 0.85);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
<div class="container text-center">
    <h1>Nguyen Phuoc Thuan</h1>
    <p class="lead">Message from Servlet: ${message}</p>
    <p>Current time: <%= new java.util.Date() %></p>
</div>

<!-- Optional Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>