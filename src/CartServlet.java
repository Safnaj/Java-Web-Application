//Shashikala

import java.io.IOException; 
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public CartServlet() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		//HttpSession session = request.getSession();
        //session.setAttribute("username", username);
        
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String item = request.getParameter("item");
		String qty = request.getParameter("qty");
		String payement = request.getParameter("payement");
		String cnum = request.getParameter("cnum");
		

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingsite","root","");
			PreparedStatement stmt = con.prepareStatement("insert into cart values(?,?,?,?,?)");
			stmt.setString(1, username);
			stmt.setString(2, item);
			stmt.setString(3, qty);
			stmt.setString(4, payement);
			stmt.setString(5, cnum);
			
			//System.out.println(gamename);
			
			int k = stmt.executeUpdate();
		
			if (k>0) {
				   out.println("Your Order Placed Successfully..!");
	               RequestDispatcher rs = request.getRequestDispatcher("invoice.jsp");	//Redirect Page
	               //rs.forward(request, response);
			}
		}catch (Exception e) {
			System.out.println(e);
		} 
	}

}
