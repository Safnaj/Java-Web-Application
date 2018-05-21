

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ContactServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Nothing in get Method
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String msg = request.getParameter("msg");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");	//MySQL Database Connector
			//Creating a Connection to Database
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingsite","root","");
			PreparedStatement stmt = con.prepareStatement("insert into contactus values(?,?,?)");
			stmt.setString(1, name);	
			stmt.setString(2, email);
			stmt.setString(3, msg);
			
			int k = stmt.executeUpdate();	//Execute SQL Query
			if (k>0) {
				out.println("You Message Successfully Sent..!"); //Success Message
				out.println("<br/>One of Our Represntatives will Get Back you Soon...");						
			}
		}catch (Exception e) {
			System.out.println(e);
		} 
	}

}
