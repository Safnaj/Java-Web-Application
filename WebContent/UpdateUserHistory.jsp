<!----IT17045940--->
<!----Dias A.M.A.P.>
<!----G-1.2-------->

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String username = request.getParameter("username");
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
		String sql = "select * from users where username=" + username;
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
	background-image: url("images/Gaming11.jpg");
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
	color:white;
}

</style>
</head>
<body>
	<div class="container">
			<div class="header">
		<h1>Update User</h1>
	</div>
	<div class="main">
		<form method="post" action="updateProcessUserHistory">
				<table>
				
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"
						value="<%=resultSet.getString("name")%>"></td>
				</tr>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="username"
						value="<%=resultSet.getString("username")%>"></td>
				</tr>
				<tr>
					<td>Mobile</td>
					<td><input type="text" name="mobile"
						value="<%=resultSet.getString("mobile")%>"></td>
				</tr>
				<tr>
					<td>E-Mail</td>
					<td><input type="text" name="email"
						value="<%=resultSet.getString("email")%>"></td>
				</tr>
				<tr>
					<td>Country</td>
					<td><input type="text" name="country"
						value="<%=resultSet.getString("country")%>"></td>
				</tr>
				
				<tr>
					<td><input type="submit" value="Update User"></td>
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
