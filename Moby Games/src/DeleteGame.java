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


@WebServlet("/DeleteGame")
public class DeleteGame extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DeleteGame() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		String GameID = request.getParameter("GameID");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingsite?autoReconnect=true&useSSL=true", "root", "");
			Statement preparedStatement = conn.createStatement();

			String sql = "delete * from game where GameID="+GameID;

			int i = preparedStatement.executeUpdate(sql);
			if(i>0)
				response.sendRedirect("displayGameHistory.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
