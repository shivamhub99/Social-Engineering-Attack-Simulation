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
 * Servlet implementation class QuizServlet
 */
@WebServlet("/quiz")
public class QuizServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuizServlet() {
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
	
	// Correct answers
    
    private static final String DB_URL = "jdbc:mysql://localhost:3306/socialsimdb";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "root";
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 String name = request.getParameter("name");
	        int score = 0;

	        // Correct answers
	        String[] correctAnswers = {"d", "b", "b", "c", "c", "b", "a", "c", "b", "c"};

	        for (int i = 1; i <= 10; i++) {
	            String answer = request.getParameter("q" + i);
	            if (answer != null && answer.equalsIgnoreCase(correctAnswers[i - 1])) {
	                score++;
	            }
	        }

	        // Store result in DB
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	            String sql = "INSERT INTO quiz_results (username, score) VALUES (?, ?)";
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1, name);
	            ps.setInt(2, score);
	            ps.executeUpdate();
	            conn.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        // Pass values to results JSP
	        request.setAttribute("name", name);
	        request.setAttribute("score", score);
	        request.getRequestDispatcher("quiz_result.jsp").forward(request, response);
	}

}
