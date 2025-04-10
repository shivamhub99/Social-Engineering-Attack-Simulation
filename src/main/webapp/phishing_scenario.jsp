<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Phishing Simulation</title>
    <style>
        body {
            background-color: #0b0c10;
            color: #66fcf1;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            text-align: center;
            padding-top: 50px;
        }
        h1 {
            color: #45a29e;
        }
        .phish-options {
            display: flex;
            justify-content: center;
            gap: 50px;
            margin-top: 40px;
        }
        .card {
            background: #1f2833;
            padding: 20px;
            border-radius: 15px;
            width: 200px;
            cursor: pointer;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 0 20px #66fcf1;
        }
        .card img {
            width: 100px;
            height: 100px;
            object-fit: contain;
        }
        .card p {
            margin-top: 10px;
            font-weight: bold;
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

<a class="back-btn" href="index.jsp">⬅ Back to Home</a>


<h1>🎯 Phishing Simulation</h1>
<p>Choose a platform to experience a simulated phishing attack.</p>

<div class="phish-options">
    <form action="fake_instagram.jsp" method="get">
        <div class="card" onclick="this.parentNode.submit();">
            <img src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png" alt="Instagram">
            <p>Instagram</p>
        </div>
    </form>
    <form action="fake_facebook.jsp" method="get">
        <div class="card" onclick="this.parentNode.submit();">
            <img src="https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png" alt="Facebook">
            <p>Facebook</p>
        </div>
    </form>
    <form action="fake_snapchat.jsp" method="get">
        <div class="card" onclick="this.parentNode.submit();">
<img src="https://upload.wikimedia.org/wikipedia/en/thumb/c/c4/Snapchat_logo.svg/1200px-Snapchat_logo.svg.png" alt="Snapchat">
            <p>Snapchat</p>
        </div>
    </form>
</div>
</body>
</html>
