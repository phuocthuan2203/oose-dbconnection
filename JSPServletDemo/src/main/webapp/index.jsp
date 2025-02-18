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
    <title>JSP and Servlet Demo</title>
</head>
<body>
<h1>Nguyen Phuoc Thuan</h1>
<p>Message from Servlet: ${message}</p>
<p>Current time: <%= new java.util.Date() %></p>
</body>
</html>