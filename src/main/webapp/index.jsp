<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cybersecurity Simulation Platform</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: #0d0d0d;
            color: #00ffcc;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        header {
            background-color: #111;
            padding: 20px 40px;
            text-align: center;
            border-bottom: 1px solid #00ffcc;
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
            color: #00ffcc;
        }

        .subtitle {
            color: #aaa;
            font-size: 1.1em;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 50px 20px;
        }

        .card {
            background-color: #1a1a1a;
            border: 1px solid #00ffcc;
            padding: 30px;
            margin: 15px;
            width: 300px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 0 10px #00ffcc;
            transition: transform 0.2s ease;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card a {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #00ffcc;
            color: #000;
            font-weight: bold;
            text-decoration: none;
            border-radius: 5px;
        }

        footer {
            margin-top: 40px;
            text-align: center;
            font-size: 0.9em;
            color: #444;
        }

        .grid {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }
    </style>
</head>
<body>

<header>
    <h1>🛡️ Social Engineering Attack Simulation</h1>
    <p class="subtitle">Train. Detect. Defend.</p>
</header>

<div class="container">
    <div class="grid">
        <div class="card">
            <h2>🎯 Phishing Simulation</h2>
            <p>Experience a real fake login page scenario.</p>
            <a href="phishing_scenario.jsp">Launch</a>
        </div>

        <div class="card">
            <h2>🧠 Awareness Quiz</h2>
            <p>Test your cybersecurity knowledge through key scenario-based questions.</p>
            <a href="quiz.jsp">Take Quiz</a>
        </div>

        <div class="card">
            <h2>🔐 Admin Dashboard</h2>
            <p>Monitor user activity, credentials log and quiz scores.</p>
            <a href="admin_dashboard.jsp">Login</a>
        </div>
    </div>
</div>

<footer>
    <p>&copy; 2025 CyberSecSim | Built for Cyber Awareness</p>
</footer>

</body>
</html>
