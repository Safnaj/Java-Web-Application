<!----IT17045940--->
<!----Dias A.M.A.P.>
<!----G-1.2-------->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String GameID = request.getParameter("GameID");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "gamingsite";
	String userid = "root";
	String password = "";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<%
	try {
		connection = DriverManager.getConnection(connectionUrl + database, userid, password);
		statement = connection.createStatement();
		String sql = "select * from game where GameID=" + GameID;
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Game</title>

<meta charset="UTF-8">
    <title>Administrator</title>
    <link rel="stylesheet" type="text/css" href=""/>
	<style>
body {
	margin: 0px;
	padding: 0px;
	font-family: Calibri;
	background-image: url("images/game30.jpg");
	background-size: 1400px 1100px;
	background-repeat: no-repeat;
}
.header {
	width: 100%;
	color: red;
	margin-left: 600px;
	margin-bottom : 100px;
}

.main {
	width: 900px;
	margin-left:500px;
	margin-right:400px;
	opacity : 0.8;
	color:black;
}

</style>
</head>
<body>
	<div class="container">
			<div class="header">
		<h1>Update Game</h1>
	</div>
	<div class="main">
		<form method="post" action="updateProcessGameHistory">
				<table>
				<tr>
					<td><input type="hidden" name="GameID" size="40"
						value="<%=resultSet.getString("GameID")%>"></td>
				</tr>
				<tr>
					<td>Game ID</td>
					<td><input type="text" name="GameID" size="40"
						value="<%=resultSet.getString("GameID")%>"></td>
				</tr>
				<tr>
					<td>Game Name</td>
					<td><input type="text" name="GameName" size="40"
						value="<%=resultSet.getString("GameName")%>"></td>
				</tr>
				<tr>
					<td>Price</td>
					<td><input type="text" name="Price" size="40"
						value="<%=resultSet.getString("Price")%>"></td>
				</tr>
				<tr>
					<td>Size</td>
					<td><input type="text" name="Size" size="40"
						value="<%=resultSet.getString("Size")%>"></td>
				</tr>
				<tr>
					<td>Requirements</td>
					<td><input type="text" name="Requirements" size="40"
						value="<%=resultSet.getString("Requirements")%>"></td>
				</tr>
				<tr>
					<td>Description</td>
					<td><input type="text" name="Description" size="40"
						value="<%=resultSet.getString("Description")%>"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Update Game"></td>
				</tr>
					</table>
		</form>
		</div>
	</div>
	
	<%
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>
