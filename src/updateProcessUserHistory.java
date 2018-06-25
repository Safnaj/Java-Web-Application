
//-----------IT17045940
//-----------Dias A.M.A.P.
//-----------G-1.2

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateProcessUserHistory")
public class updateProcessUserHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public updateProcessUserHistory() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/gamingsite";
		String user = "root";
		String psw = "";
		
		String name = request.getParameter("name");
		String username=request.getParameter("username");
		String mobile=request.getParameter("mobile");
		String email=request.getParameter("email");
		String country=request.getParameter("country");
		
		
		PrintWriter out = response.getWriter();
		
		if(username != null)
		{
		Connection con = null;
		PreparedStatement ps = null;
		int personID = Integer.parseInt(username);
		try
		{
			Class.forName(driverName);
			con = DriverManager.getConnection(url,user,psw);
			String sql="Update users set name=?,username=?,mobile=?,email=?,country=? where username="+personID;
			ps = con.prepareStatement(sql);
			ps.setString(1,name);
			ps.setString(2, username);
			ps.setString(3, mobile);
			ps.setString(4, email);
			ps.setString(5, country);
	
			int i = ps.executeUpdate();
			if(i > 0)
		{
			out.print("Record Updated Successfully");
			response.sendRedirect("displayUserHistory.jsp") ;
		}
		else
		{
			out.print("There is a problem in updating Record.");
		}
		}
		catch(SQLException | ClassNotFoundException sql)
		{
			request.setAttribute("error", sql);
			out.println(sql);
		}
		}
		
	}

}
