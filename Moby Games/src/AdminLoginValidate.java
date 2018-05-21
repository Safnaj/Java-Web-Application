//-----------IT17045940
//-----------Dias A.M.A.P.
//-----------G-1.2


import java.sql.*;
import java.sql.DriverManager;

public class AdminLoginValidate {
		
		public static boolean checkuser (String username , String password)
		{
			boolean st = false;
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingsite","root","");
				PreparedStatement ps = con.prepareStatement("select * from admin where username=? and password=?");
				
				ps.setString(1, username);
				ps.setString(2, password);
				ResultSet rs = ps.executeQuery();
				st=rs.next();
				
		} catch (Exception e) {
			e.printStackTrace();
		}
			return st;
		}
}
