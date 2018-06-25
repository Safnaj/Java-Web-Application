//Ishan
import com.mysql.jdbc.Driver;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import java.io.*;
import java.text.*;
import java.util.*;
import javax.servlet.*;



@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RegServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		User user = new User();
		
		user.setName(request.getParameter("name"));
		user.setUsername(request.getParameter("username"));
		user.setMobile(request.getParameter("mobile"));
		user.setEmail(request.getParameter("email"));
		user.setcountry(request.getParameter("country"));
		user.setPassword(request.getParameter("password"));
		user.setcPassword(request.getParameter("cpassword"));
		
		String name = user.getName();
		String username=user.getUsername();
		String mobile=user.getMobile();
		String email=user.getEmail();
		String country=user.getcountry();
		String password=user.getPassword();
		String cpassword=user.getcPassword();
		
		
		if(name.isEmpty() || username.isEmpty() || mobile.isEmpty() || email.isEmpty() || country.isEmpty() || password.isEmpty() || cpassword.isEmpty())
		{
			out.println("Please Fill the form to Register..!");
				
		}
		else if (password !=null && cpassword != null) {
			
				/* if(password.equals(cpassword)) { */
					
					UserImp un = new UserImp();
					
					try {
						
						un.RegisUser(user);
						out.println("You are Successfully Registered..!");
						//response.sendRedirect("login.jsp");
					} catch (Exception e) {
						e.printStackTrace();
					}
					
				}/*
				else
				{
					out.println("Password does not Match..!");
					
				}*/
		}
		}


		
		
		
		/* Only Servlet Method - Safnaj	
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String mobile = request.getParameter("mobile");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingsite","root","");
			PreparedStatement stmt = con.prepareStatement("insert into users values(?,?,?,?,?,?)");
			stmt.setString(1, name);
			stmt.setString(2, username);
			stmt.setString(3, mobile);
			stmt.setString(4, email);
			stmt.setString(5, address);
			stmt.setString(6, password);
			
			int k = stmt.executeUpdate();
			if (k>0) {
				out.println("You have Successfully Registered..!");
											
			}
		}catch (Exception e) {
			System.out.println(e);
		}  */
			
	

