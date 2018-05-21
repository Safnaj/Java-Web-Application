//Ishan

import java.sql.*;

public class UserImp{

	 Connection connection;
	 Statement statement;
	
	public void RegisUser(User user) throws ClassNotFoundException, SQLException{

		String name= user.getName();
		String username=user.getUsername();
		String mobile=user.getMobile();
		String email=user.getEmail();
		String country=user.getcountry();
		String password=user.getPassword();
		String cpassword=user.getcPassword();
		
		connection = DBconnection.getDBConnection();
		connection.setAutoCommit(false);
		statement = connection.createStatement();
		
		String addUser="INSERT INTO `users` VALUES('"+name+"','"+username+"','"+mobile+"','"+email+"','"+country+"','"+password+"','"+cpassword+"')";
		
		statement.executeUpdate(addUser);
		
	}
}
