
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

@WebServlet("/updateProcessGameHistory")
public class updateProcessGameHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public updateProcessGameHistory() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/gamingsite?autoReconnect=true&useSSL=false";
		String user = "root";
		String psw = "";
		
		String GameID = request.getParameter("GameID");
		String GameName=request.getParameter("GameName");
		String Price=request.getParameter("Price");
		String Size=request.getParameter("Size");
		String Requirements=request.getParameter("Requirements");
		String Description=request.getParameter("Description");
		
		PrintWriter out = response.getWriter();
		
		if(GameID != null)
		{
		Connection con = null;
		PreparedStatement ps = null;
		int gameID = Integer.parseInt(GameID);
		try
		{
		Class.forName(driverName);
		con = DriverManager.getConnection(url,user,psw);
		String sql="Update game set GameID=?,GameName=?,Price=?,Size=?,Requirements=?,Description=? where GameID="+gameID;
		ps = con.prepareStatement(sql);
		ps.setString(1,GameID);
		ps.setString(2, GameName);
		ps.setString(3, Price);
		ps.setString(4, Size);
		ps.setString(5, Requirements);
		ps.setString(6, Description);
		
		int i = ps.executeUpdate();
		
		if(i > 0)
		{
			out.print("Record Updated Successfully");
			response.sendRedirect("displayGameHistory.jsp") ;
		}
		else
		{
			out.print("There is a problem in updating Record.");
		}
		}
		catch(SQLException | ClassNotFoundException sql)
		{
		request.setAttribute("error", sql);//session
		out.println(sql);
		}
		}
		
	}

}
