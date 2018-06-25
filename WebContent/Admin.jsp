<!----IT17045940--->
<!----Dias A.M.A.P.>
<!----G-1.2-------->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
<html>
<head>
    <title>Moby Games</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />

	<meta charset="utf-8">
	<meta name="viewport" content="initial-scale=1">
    
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/templatemo_misc.css">
	<link rel="stylesheet" href="css/templatemo_style.css">
</head>
<body>
	
	

						<div class="welcome-text" align = "center">>
					  <img src="images/login.png" height = "200" width = "220">	
						  <h2><strong>Admin Login</strong></h2>
						  <p>-- Sign in Here with your Credentials --</p>
						  <pre>
        <form action="AdminLoginServlet" method="post">
            
        <label class="main">Username: </label>           <input type="text" placeholder="adminname" name="username">
        
      	 </select>  
            
        <label class="main">Password: </label>           <input type="password" placeholder="password" name="password">

                        
                 <input type = "submit" value = "Login" style = "background:#38A9E3;
                 

  font-family: Open Sans;
  color: #ffffff;
  font-size: 27px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;">
       

       </form>

        </pre>
						  <!--Note-->
						</div>
					</div>
				</div>
			</div>
		</div> <!-- /#sTop -->
 </div>
		<div class="container-fluid">

		</div>	

		

	<!-- JavaScripts -->
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery.singlePageNav.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/custom.js"></script>
	<script>
		$(document).ready(function(){
			$("a[data-gal^='prettyPhoto']").prettyPhoto({hook: 'data-gal'});
		});

        function initialize() {
          var mapOptions = {
            zoom: 13,
            center: new google.maps.LatLng(40.7809919,-73.9665273)
          };

          var map = new google.maps.Map(document.getElementById('map-canvas'),
              mapOptions);
        }

        function loadScript() {
          var script = document.createElement('script');
          script.type = 'text/javascript';
          script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' +
              'callback=initialize';
          document.body.appendChild(script);
        }

        window.onload = loadScript;
    </script>

</body>
</html>