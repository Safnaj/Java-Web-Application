<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	background-image: url("images/mainSlideShow2.jpg");
	background-size: 1400px 1100px;
	background-repeat: no-repeat;
}
.header {
	width: 100%;
	color: white;
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
<body class = "body">
		
		<div class="header">
		<h1>Add Game</h1>
	</div>
<div class="main">
	<form method = "POST" action="Addgame">
		<table>
			<tr>
				<td>Game Name</td>
				<td><input type="text" name="GameName" size="40"/></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type="text" name="Price" size="40"/></td>
			</tr>
			<tr>
				<td>Size</td>
				<td><input type="text" name="Size" size="40"/></td>
			</tr>
			<tr>
				<td>System Requirements</td>
				<td><input type="text" name="Requirements" size="40"/></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input type="text" name="Description" size="40"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value = "Add Game" class="add-button" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="reset" value = "Reset" class="reset-button" />
			</tr>			
		</table>
	</form>
	
	</div>
	
	</body>
</html>							
