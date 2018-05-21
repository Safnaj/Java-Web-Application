
<!----Shashikala-------->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invoice</title>
<link rel="stylesheet" type="text/css" href="">
<style type="text/css">
.container{
	border-radius: 5px;
	background-color: #000000;
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
	<font><strong>You Order Placed Successfully..!</strong></font>
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
		<font><strong>Invoice</strong></font>
	</h2>
	<table align="center" cellpadding="15" cellspacing="5" border="1">
		<tr>
		
 		
 	

		</tr>
		<tr>
			<td><b>User Name</b></td>
			<td><b>Game Name</b></td>
			<td><b>Quantity</b></td>
			<td><b>Payment</b></td>
			<td><b>Total Price</b></td>
						
		</tr>
		<%
		

		try{ 
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingsite?autoReconnect=true&useSSL=false" , "root" ,""); 
		statement = connection.createStatement(); 
		String sql = "SELECT* FROM cart"; 
		resultset = statement.executeQuery(sql); 
		while(resultset.next()){

		%>

		<tr >
			<td><%= resultset.getString("username") %></td>
			<td><%= resultset.getString("gamename") %></td>
			<td><%= resultset.getString("qty") %></td>
			<td><%= resultset.getString("payement") %></td>
			<td>500.00</td>
			
		</tr>



		<%
		}
		
		}catch(Exception e)
		{ e.printStackTrace();}
		%>
	</table>
	</div>
	
	
</body>
</html>