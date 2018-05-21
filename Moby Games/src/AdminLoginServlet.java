//-----------IT17045940
//-----------Dias A.M.A.P.
//-----------G-1.2


import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AdminLoginServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        Admin user = new Admin();
		
			//user.setUsername(request.getParameter("Username"));
			//user.setPassword(request.getParameter("password"));
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
       	           
        if(AdminLoginValidate.checkuser(username, password))
        {
     	   HttpSession session = request.getSession();
            session.setAttribute("username", username);
            
            RequestDispatcher rs = request.getRequestDispatcher("AdminDashboard.jsp"); 
            rs.forward(request, response);
    
        }
        else
        {
           out.println("Username or Password Incorrect");
           //RequestDispatcher rs = request.getRequestDispatcher("Login Error.html");
           //rs.include(request, response);
        }
	}

}
