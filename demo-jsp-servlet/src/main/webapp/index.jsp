<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to JSP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            overflow: hidden;
        }
        h1 {
            font-size: 3rem;
            color: #fff;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
            margin: 0;
        }
        .button-container {
            margin-top: 20px;
        }
        a {
            text-decoration: none;
            font-size: 1.2rem;
            color: #fff;
            padding: 10px 20px;
            border-radius: 25px;
            background: rgba(255, 255, 255, 0.2);
            transition: all 0.3s ease;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        a:hover {
            background: rgba(255, 255, 255, 0.4);
            box-shadow: 0px 6px 10px rgba(0, 0, 0, 0.2);
        }
        footer {
            position: absolute;
            bottom: 10px;
            color: #fff;
            font-size: 0.8rem;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
<h1>Welcome to JSP - Hello World!</h1>
<div class="button-container">
    <a href="login.jsp">Go to Login Page</a>
</div>
<footer>© 2025 Your Company Name</footer>
</body>
</html>