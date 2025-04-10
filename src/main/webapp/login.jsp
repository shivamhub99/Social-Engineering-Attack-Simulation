<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body {
            background-color: #1a1a1a;
            color: #00ffcc;
            font-family: 'Courier New', monospace;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            position: relative;
            background: #111;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px #00ffcc;
            text-align: center;
            width: 400px;
        }

        .nav-btn {
            position: absolute;
            top: -50px;
            right: 0;
            background-color: #ff0040;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            box-shadow: 0 0 10px #ff0040;
        }

        .nav-btn:hover {
            background-color: #e60036;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 20px;
            background: #000;
            color: #00ffcc;
            border: 1px solid #00ffcc;
        }

        input[type="submit"] {
            background-color: #00ffcc;
            color: #000;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            border-radius: 5px;
        }

        input[type="submit"]:hover {
            background-color: #00e6b8;
        }

        .error {
            color: #ff0040;
            margin-bottom: 15px;
        }
        
        .back-btn {
            position: fixed;
            top: 20px;
            right: 30px;
            background-color: #ff0040;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }
        .back-btn:hover {
            background-color: #e60036;
        }
        
    </style>
</head>
<body>

<div class="container">
    <!-- Back to Home Button -->
	<a class="back-btn" href="index.jsp">⬅ Back to Home</a>
	
    <h2>🔐 Admin Login</h2>

    <% if (request.getAttribute("error") != null) { %>
        <p class="error"><%= request.getAttribute("error") %></p>
    <% } %>

    <form action="admin_dashboard" method="post">
        <label>Username:</label>
        <input type="text" name="admin_username" required>

        <label>Password:</label>
        <input type="password" name="admin_password" required>

        <input type="submit" value="Login">
    </form>
</div>

</body>
</html>
