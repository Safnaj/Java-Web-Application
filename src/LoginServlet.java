//Safnaj
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Nothing in Get Method
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	       throws ServletException, IOException {
	           response.setContentType("text/html;charset=UTF-8");
	           PrintWriter out = response.getWriter();
	           
	           User user = new User(); //Creatin Object from User Class
	   		
	   			//user.setUsername(request.getParameter("username"));
	   			//user.setPassword(request.getParameter("password"));
	           
	           String username = request.getParameter("username");	//Getting Value from HTML Field
	           String password = request.getParameter("password");	//getting Value from HTML Field
	           
	           if (username == null || password == null) {
	                out.print("Username & Password Required..!");
	           }
	           
	           if(LoginValidate.checkuser(username, password))	//Validating Login Details with Login validate class
	           {
	        	   HttpSession session = request.getSession();
	               session.setAttribute("username", username);	//Seesion saves user name for Welcome
	               
	               RequestDispatcher rs = request.getRequestDispatcher("Welcome.jsp");	//Redirect Page
	               rs.forward(request, response);
	           
	           }
	           else
	           {	//If Login Credentials are Wrong Print This.
	              out.println("Username or Password Incorrect");
	              //RequestDispatcher rs = request.getRequestDispatcher("Login Error.html");
	              //rs.include(request, response);
	           }
	}

}
