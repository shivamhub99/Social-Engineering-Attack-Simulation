<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Quiz Results</title>
    <style>
        body {
            background-color: #0d0d0d;
            font-family: 'Segoe UI', sans-serif;
            color: #00ffcc;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .result-container {
            background-color: #1a1a1a;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 25px #00ffcc;
            width: 90%;
            max-width: 500px;
            text-align: center;
        }
        h1, h2 {
            color: #00ffff;
        }
        .score {
            font-size: 2rem;
            color: #66ff66;
        }
        .btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #00ffcc;
            color: black;
            text-decoration: none;
            font-weight: bold;
            border-radius: 10px;
            transition: background 0.3s ease;
        }
        .btn:hover {
            background-color: #00e6b8;
        }
    </style>
</head>
<body>
<div class="result-container">
    <h1>Cybersecurity Awareness Quiz</h1>

    <%
        String name = (String) request.getAttribute("name");
        Integer score = (Integer) request.getAttribute("score");
    %>

    <h2>Thank you, <%= name != null ? name : "Participant" %>!</h2>
    <p>Your score is:</p>
    <div class="score"><%= score != null ? score : "0" %> / 10</div>

    <a class="btn" href="index.jsp">⬅ Back to Home</a>
</div>
</body>
</html>