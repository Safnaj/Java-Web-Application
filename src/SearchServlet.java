
import java.io.IOException;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public SearchServlet() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String reason = request.getParameter("reason");
		
		

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingsite","root","");
			PreparedStatement stmt = con.prepareStatement("insert into leftusers values(?,?)");
			stmt.setString(1, username);
			stmt.setString(2, reason);
		
			int k = stmt.executeUpdate();
			
			
			
			if (k>0) {
				   out.println("Your Order Placed Successfully..!");
	               //RequestDispatcher rs = request.getRequestDispatcher("invoice.jsp");	//Redirect Page
	               //rs.forward(request, response);
			}
		}catch (Exception e) {
			System.out.println(e);
		} 
	}
}


