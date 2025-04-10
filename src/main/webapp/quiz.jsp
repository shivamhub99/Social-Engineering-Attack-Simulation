<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cybersecurity Awareness Quiz</title>
    <style>
        body {
            background-color: #0d0d0d;
            color: #00ffcc;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            text-align: center;
            padding: 30px 20px;
            background-color: #111;
            border-bottom: 1px solid #00ffcc;
        }

        header h1 {
            font-size: 2.5em;
            margin: 0;
        }

        .container {
            max-width: 800px;
            margin: 30px auto;
            background-color: #1a1a1a;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px #00ffcc;
        }

        h2 {
            margin-top: 0;
            color: #00ffcc;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        .question {
            margin-bottom: 25px;
            padding: 15px;
            background-color: #111;
            border-radius: 6px;
        }

        .submit-btn {
            background-color: #00ffcc;
            color: #000;
            font-weight: bold;
            padding: 12px 25px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.2s ease-in-out;
        }

        .submit-btn:hover {
            background-color: #00e6b8;
        }

        input[type="text"] {
            padding: 10px;
            width: 100%;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            background-color: #222;
            color: #00ffcc;
        }

        .result {
            font-size: 1.3em;
            margin-top: 30px;
            text-align: center;
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

<header>
    <h1>🧠 Cybersecurity Awareness Quiz</h1>
</header>

<div class="container">
    <form method="post" action="quiz">
        <label for="name">Enter Your Name:</label>
        <input type="text" name="name" required />

        <%-- Questions --%>
        <div class="question">
            <p>1. What is the best way to detect a phishing email?</p>
            <label><input type="radio" name="q1" value="a" /> Check for grammar/spelling mistakes</label>
            <label><input type="radio" name="q1" value="b" /> Check the sender’s email address</label>
            <label><input type="radio" name="q1" value="c" /> Hover over links to verify URL</label>
            <label><input type="radio" name="q1" value="d" /> All of the above</label>
        </div>

        <div class="question">
            <p>2. What is two-factor authentication (2FA)?</p>
            <label><input type="radio" name="q2" value="a" /> A type of firewall</label>
            <label><input type="radio" name="q2" value="b" /> Using a password and a second method of verification</label>
            <label><input type="radio" name="q2" value="c" /> Repeating your password twice</label>
            <label><input type="radio" name="q2" value="d" /> Email verification only</label>
        </div>

        <div class="question">
            <p>3. What’s the safest way to create a strong password?</p>
            <label><input type="radio" name="q3" value="a" /> Use your birthdate</label>
            <label><input type="radio" name="q3" value="b" /> Use a mix of letters, numbers, and symbols</label>
            <label><input type="radio" name="q3" value="c" /> Use "password123"</label>
            <label><input type="radio" name="q3" value="d" /> Use your pet’s name</label>
        </div>

        <div class="question">
            <p>4. Which of the following is a social engineering attack?</p>
            <label><input type="radio" name="q4" value="a" /> Virus</label>
            <label><input type="radio" name="q4" value="b" /> Firewall breach</label>
            <label><input type="radio" name="q4" value="c" /> Phishing</label>
            <label><input type="radio" name="q4" value="d" /> Malware</label>
        </div>

        <div class="question">
            <p>5. Which link is suspicious?</p>
            <label><input type="radio" name="q5" value="a" /> https://google.com</label>
            <label><input type="radio" name="q5" value="b" /> https://secure.bank.com</label>
            <label><input type="radio" name="q5" value="c" /> https://secure-login.bank.verify.yz</label>
            <label><input type="radio" name="q5" value="d" /> https://github.com</label>
        </div>

        <div class="question">
            <p>6. What does HTTPS stand for?</p>
            <label><input type="radio" name="q6" value="a" /> HyperText Transfer Password System</label>
            <label><input type="radio" name="q6" value="b" /> HyperText Transfer Protocol Secure</label>
            <label><input type="radio" name="q6" value="c" /> High Transfer Protocol Scheme</label>
            <label><input type="radio" name="q6" value="d" /> Hyper Transfer Protocol Server</label>
        </div>

        <div class="question">
            <p>7. What is a common tactic used in baiting attacks?</p>
            <label><input type="radio" name="q7" value="a" /> Giving out USB drives with malware</label>
            <label><input type="radio" name="q7" value="b" /> Sending funny memes</label>
            <label><input type="radio" name="q7" value="c" /> Free software download from trusted sites</label>
            <label><input type="radio" name="q7" value="d" /> DDoS attacks</label>
        </div>

        <div class="question">
            <p>8. What should you do if you receive a suspicious email at work?</p>
            <label><input type="radio" name="q8" value="a" /> Click the link to check</label>
            <label><input type="radio" name="q8" value="b" /> Delete it immediately</label>
            <label><input type="radio" name="q8" value="c" /> Forward to IT/security team</label>
            <label><input type="radio" name="q8" value="d" /> Reply to sender asking if it’s real</label>
        </div>

        <div class="question">
            <p>9. What is the purpose of a firewall?</p>
            <label><input type="radio" name="q9" value="a" /> Prevent overheating</label>
            <label><input type="radio" name="q9" value="b" /> Filter network traffic</label>
            <label><input type="radio" name="q9" value="c" /> Speed up internet</label>
            <label><input type="radio" name="q9" value="d" /> Store passwords securely</label>
        </div>

        <div class="question">
            <p>10. Which one is a good cybersecurity habit?</p>
            <label><input type="radio" name="q10" value="a" /> Sharing passwords with coworkers</label>
            <label><input type="radio" name="q10" value="b" /> Using one password for all sites</label>
            <label><input type="radio" name="q10" value="c" /> Locking your screen when away</label>
            <label><input type="radio" name="q10" value="d" /> Writing passwords on sticky notes</label>
        </div>

        <input class="submit-btn" type="submit" value="Submit Quiz" />
    </form>

    <%-- Evaluate Score --%>
    <%
        String[] answers = { "d", "b", "b", "c", "c", "b", "a", "c", "b", "c" };
        int score = 0;

        if (request.getMethod().equalsIgnoreCase("POST")) {
            for (int i = 1; i <= 10; i++) {
                String ans = request.getParameter("q" + i);
                if (ans != null && ans.equals(answers[i - 1])) {
                    score++;
                }
            }
    %>
        <div class="result">
            <p>🎉 <strong><%= request.getParameter("name") %></strong>, you scored <strong><%= score %>/10</strong> on the quiz!</p>
            <p><%= (score >= 7) ? "✅ Great awareness! Keep it up." : "⚠️ Time to brush up on your security skills!" %></p>
        </div>
    <%
        }
    %>
</div>

</body>
</html>

