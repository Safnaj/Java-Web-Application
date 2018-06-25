<!----IT17045940--->
<!----Dias A.M.A.P.>
<!----G-1.2-------->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Administrator</title>
<link rel="stylesheet" type="text/css" href="" />
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
	margin-left: 390px;
	margin-bottom : 50px;
}

.main {
	width: 900px;
	margin-left: 202px;
	opacity : 0.8;
}

input[type="submit"] {
	padding: 10px 50px;
	color : green;
}

.button-link1 {
	float: left;
	margin-top: 220px;
	margin-left : 5px;
}

.button-link2 {
	float: right;
	margin-top: 220px;
	margin-right : 15px;
}
</style>
</head>
<body>
	<div class="header">
		<h1>Welcome to Administrator Dashboard</h1>
	</div>
	<div class="content">
		<div class="button-link1">
			<a href="displayGameHistory.jsp"><input type="submit"
				value="Games List" class="add-button" /></a>
		</div>
		<div class="button-link2">
			<a href="displayUserHistory.jsp"><input type="submit"
				value="Registed Users List" class="add-button" /></a>
		</div>
		<div class="main">

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="images/mainSlideShow.jpg" alt="Los Angeles"
							style="width: 100%;">
					</div>

					<div class="item">
						<img src="images/game25_1.jpg" alt="Chicago" style="width: 100%;">
					</div>

					<div class="item">
						<img src="images/game23.jpg" alt="New york" style="width: 100%;">
					</div>
					
					<div class="item">
						<img src="images/game24_11.jpg" alt="New york" style="width: 100%;">
					</div>
					
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>

	</div>
</body>
</html>
