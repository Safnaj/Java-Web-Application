

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;
import com.mysql.jdbc.*;

@WebServlet("/ChangePwd")
public class ChangePwd extends HttpServlet {
	
    public ChangePwd() {
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(); 
        String username = (String) session.getAttribute("username");	//Getting Username from Session
        String newpwd = request.getParameter("newpwd");	//Getting values from HTML Form and Assigning to String Variable
		String newpwd2 = request.getParameter("newpwd2"); //Getting values from HTML Form and Assigning to String Variable
	
		
        
      
            if(newpwd.equals(newpwd2)) //if both new Password Matches do this
            {
                Connection con = null;
                PreparedStatement ps;
                ResultSet rs;
                String query;
                
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");	//Calling JDBC Driver
                }
                catch(Exception e)
                {
                    System.out.println(e);	//Print Exception
                    
                }
                try
                {
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingsite","root","");
                    //query = "select * from users where username='"+username+"'";
                    query = "select * from users where username=? ";
                    ps = con.prepareStatement(query);
                    ps.setString(1, username);
                    //ps.setString(2, request.getParameter("oldpwd"));
                    
                    rs = ps.executeQuery();
                    
                    if(rs.next())
                    {
                       // query = "update users set password='"+newpwd+"' where username='"+username+"'";
                        query = "update users set password=? where username=?";	//SQL Query to Update the Password in DB
                        ps = con.prepareStatement(query);
                        ps.setString(1,newpwd);	
                        ps.setString(2,request.getParameter("username"));
                        ps.executeUpdate();
                        out.println("Password Changed Successfully...");	//Success Message
                    }
                    else
                    {
                        out.println("Invalid Credentials provided!!!!");
                    }
                    	
                }
                
                catch(SQLException e)
                {
                    System.out.println(e);	//Print SQL Exception
                }
		
            }
            else {	//If Password Doesn't Match..
            	out.println("Password does not Match..!");
            } 
		
		
		
		
		
		/*
		 another method not succsess
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingsite","root","");
			Statement st=con.createStatement();
			//PreparedStatement stmt = con.prepareStatement("select * from users where password='"+oldpwd+"'");
			ResultSet rs=st.executeQuery("select * from users where password='"+oldpwd+"'");
						
			while(rs.next()){
				
				User user = new User();
				user.setUsername(username);
				user.setPassword(newpwd);
				
				String sql = "update users set password=? where username=?";
				int i = User.resetPassword(m, sql);
				pass=rs.getString(1);
				} 
					if(pass.equals(oldpwd)){
						java.sql.Statement st1=con.createStatement();
						int i=st1.executeUpdate("update users set password='"+newpwd+"' where username='"+username+"'");
						out.println("Password changed successfully");
						st1.close();
						con.close();
				}
				else{
				out.println("Invalid Current Password");
				}
		
		}catch (Exception e) {
			System.out.println(e);
		} 
	}
*/

	}
}
