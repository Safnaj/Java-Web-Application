//Safnaj
import java.sql.*;

public class LoginValidate { //Creating Class
	
	public static boolean checkuser (String username , String password) //Checkuser Boolean Method
	{
		boolean st = false;	//creating boolean st to false;	
		
		try {
			Class.forName("com.mysql.jdbc.Driver");	//MySQL Database Driver
			
			//Creating Connection to Database
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingsite","root","");
			//Creating s SQL Statement 
			PreparedStatement ps = con.prepareStatement("select * from users where username=? and password=?");
			
			ps.setString(1, username);	
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();	//Executing SQL Query
			st=rs.next();
			
	} catch (Exception e) {
		e.printStackTrace();
	}
		return st;
	}
}
