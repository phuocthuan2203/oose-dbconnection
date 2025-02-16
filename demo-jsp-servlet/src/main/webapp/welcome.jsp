<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Welcome</title>
</head>
<body>
<%
  // Retrieve the username from the request attribute
  String username = (String) request.getAttribute("username");
%>

<% if (username != null) { %>
<h1>Welcome, <%= username %>!</h1>
<p>You have successfully logged in.</p>
<% } else { %>
<h1>Welcome!</h1>
<p>Please log in first.</p>
<% } %>

</body>
</html>