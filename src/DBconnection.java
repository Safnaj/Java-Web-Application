import java.sql.*;
import com.mysql.jdbc.Driver;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
	
	private static String DB_URL = "jdbc:mysql://localhost:3306/gamingsite";
    private static String USER = "root";
	private static String PASS = "";
	
	private static Connection connection;
	
	private DBconnection(){		
	}
	
	public static Connection getDBConnection() throws ClassNotFoundException, SQLException {
		
		if(connection == null ||  connection.isClosed()){
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(DB_URL,USER,PASS);
		}		
		return connection;
	}
	
	
	
	/* method 2 (safnaj)
	Connection con;
	
	public Connection getCon()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingsite","root","");
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		} catch (SQLException e) {
			System.out.println(e);
		}
		return con;
	} */
}

	/* method (Stack Over Flow)
	try {
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("Database Driver Found");
	}catch(ClassNotFoundException e) {
		System.out.println("Database Driver Not Found..!");
	}
	
	try {
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/gamingsite?useSSL=false", "root", "");
		System.out.println("Successfully Connected to your Database..!");
		
	} catch (SQLException e) {
		System.out.println("Database NOT Connected");
	}

} */