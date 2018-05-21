//-----------IT17045940
//-----------Dias A.M.A.P.
//-----------G-1.2


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteRegisteredUser")
public class DeleteRegisteredUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DeleteRegisteredUser() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		String UserID = request.getParameter("UserID");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingsite?autoReconnect=true&useSSL=true", "root", "");
			Statement preparedStatement = conn.createStatement();

			String sql = "delete from registereduser where UserID="+UserID;

			int i = preparedStatement.executeUpdate(sql);
			if(i>0)
				response.sendRedirect("displayUserHistory.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
