<!----IT17045940--->
<!----Dias A.M.A.P.>
<!----G-1.2-------->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Games List</title>
<link rel="stylesheet" type="text/css" href="">
<style type="text/css">
.container{
	border-radius: 5px;
	background-color: #000037;
	padding: 20px;
	width: 1200px;
	opacity: 0.8;
	margin-left : 50px;
	margin-top : 150px;
	color : white;
}

a{
	text-decoration : none;
	color : yellow;
}

a:hover{
	background-color : red;
}
.button-link1 {
	float: left;
	margin-top: 0px;
	margin-left : 5px;
}

</style>
	
</head>
<body>
	
	<div class="container">
	<%
	try{
		
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc.mysql.//localhost:3306/gamingsite?autoReconnect=true&useSSL=false";
	String username = "root";
	String password = "";
	
	Class.forName(driver);
	
	}catch(Exception e){
		e.printStackTrace();
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultset = null;

	%>
	<h2 class = "user" align="center">
		<font><strong>Games Record History</strong></font>
	</h2>
	<table align="center" cellpadding="15" cellspacing="5" border="1">
		<tr>
		
 		
 	

		</tr>
		<tr>
			<td><b>GameID</b></td>
			<td><b>GameName</b></td>
			<td><b>Price</b></td>
			<td><b>Size</b></td>
			<td><b>Requirements</b></td>
			<td><b>Description</b></td>
			<td><b><a href="AddGame.jsp">Add New Data</a></b></td>
			<td><b><a href="DeleteGame">Delete Records</a></b></td>
			
		</tr>
		<%
		

		try{ 
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingsite?autoReconnect=true&useSSL=false" , "root" ,""); 
		statement = connection.createStatement(); 
		String sql = "SELECT* FROM game"; 
		resultset = statement.executeQuery(sql); 
		while(resultset.next()){

		%>

		<tr >
			<td><%= resultset.getString("GameID") %></td>
			<td><%= resultset.getString("GameName") %></td>
			<td><%= resultset.getString("Price") %></td>
			<td><%= resultset.getString("Size") %></td>
			<td><%= resultset.getString("Requirements") %></td>
			<td><%= resultset.getString("Description") %></td>
			
			<td><a href="UpdateGameHistory.jsp?GameID=<%=resultset.getString("GameID")%>">Update</a></td>
			<td><a href="DeleteGame?GameID=<%=resultset.getString("GameID")%>">Delete</a></td>
		</tr>



		<%
		}
		
		}catch(Exception e)
		{ e.printStackTrace();}
		%>
	</table>
	</div>
	<div class="button-link1">
			<a href="AdminDashboard.jsp"><input type="submit"
				value="Admin Dashboard" class="add-button" /></a>
	</div>
	
</body>
</html>