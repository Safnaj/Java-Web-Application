<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	
	<!-- This one in here is responsive menu for tablet and mobiles -->
    <div class="responsive-navigation visible-sm visible-xs">
        <a href="#" class="menu-toggle-btn">
            <i class="fa fa-bars fa-2x"></i>
        </a>
       
        <div class="navigation responsive-menu">
            <ul>
                <li class="home"><a href="Welcome.jsp">Home</a></li>
	            <li class="home"><a href="Registration.jsp">Register</a></li>
	            <li class="home"><a href="login.jsp">Login</a></li>
	            <li class="home"><a href="Cart.jsp">Cart</a></li>
	            <li class="home"><a href="Contact.jsp">Contact us</a></li>
	          
            </ul> <!-- /.main_menu -->
        </div> <!-- /.responsive_menu -->
    </div> <!-- /responsive_navigation -->

	<div id="main-sidebar" class="hidden-xs hidden-sm">
	<div>
    <!-- &nbsp For Space -->
   	Welcome, <%=session.getAttribute("username")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
		</div>
 		<li class=""><a href="ChangePassword.jsp" class="external">Change My Password</a></li>
 		<li class="home"><a href="logout.jsp" class="external">Logout</a></li>
				<div class="logo"><a href="#">
		  <h1>MOBY GAMES</h1>
		</a>
		</div> <!-- /.logo -->

		<div class="navigation">
	        <ul class="main-menu">
	            <li class="home"><a href="Welcome.jsp" class="external">Home</a></li>
	            <li class="home"><a href="Registration.jsp" class="external">Register</a></li>
	            <li class="home"><a href="login.jsp" class="external">Login</a></li>
	            <li class="home"><a href="Cart.jsp" class="external">Cart</a></li>
	            <li class="home"><a href="Contact.jsp" class="external">Contact Us</a></li>
        </ul>
		</div> <!-- /.navigation -->

	</div> <!-- /#main-sidebar -->

	<div id="main-content">

		<div id="templatemo">
			
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="welcome-text">
					  <img src="images/cart.png" height = "200" width = "220">	
						  <h2><strong>Cart</strong></h2>
						  <p></p>
						  <pre>
        					 <form action="CartServlet" method="post">
        					 
        <table> 
         <tr>
        	<th><label class="main">Username : </label></th> 
        	<th>
        	${username}
        	</th>
        </tr>
           
        <tr>
        	<th><label class="main">Select Game : </label></th> 
           	<% 
        	try{     		          
        		         Class.forName("com.mysql.jdbc.Driver");
        		         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamingsite","root","");
        		         Statement stmt = con.createStatement();
        		       	 ResultSet rs = stmt.executeQuery("select * from game");
        		       	 
        		       	
          	%>
          	<th>
        	<select name="item" id="item">
        	<%
				while(rs.next())
					{
					String GameName = rs.getString("GameName"); 
					String Price = rs.getString("Price");
					
					
			%>
			<option value="<%=GameName %>"> <%=GameName %> </option>
			
			<%
					}
			%>
			</select>
			</th> 
			<%
			}
			catch(Exception sqe)
				{ 
					out.println(sqe);
				}
			%>
          
        </tr>
        
        <tr>
        	<th><label class="main">Quantity : </label></th> 
        	<th>
        	<input type="text" placeholder="Quantity" name="qty">
        	</th>
        </tr>
        
        
        <tr>    
        	<th><label class="main">Select Payement Type :</label></th>
        	<th>
        	<form>
        	<input type="radio" name = "payement" value="Visa Card" checked> VISA Card </br>
        	<input type="radio" name = "payement" value="Master Card"> Master Card </br>
            </form>
            </th>
         </tr>
         
         <tr>
        	<th><label class="main">Card Number : </label></th> 
        	<th>
        	<input type="text" placeholder="Enter 16 Digit Number" name="cnum">
        	</th>
        </tr>   
        </table>                									 	
                 
         <input type = "submit" value = "Place Order" style = "background:#38A9E3;
                 
 
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

		<div class="container-fluid">

		</div>	

		<div class="site-footer">
			<div class="first-footer">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="social-footer">
								<ul>
									<li><a href="#" class="fa fa-facebook"></a></li>
									<li><a href="#" class="fa fa-twitter"></a></li>
									<li><a href="#" class="fa fa-dribbble"></a></li>
									<li><a href="#" class="fa fa-linkedin"></a></li>
									<li><a href="#" class="fa fa-rss"></a></li>
								</ul>
							</div> <!-- /.social-footer -->
						</div> <!-- /.col-md-12 -->
					</div> <!-- /.row -->
				</div> <!-- /.container-fluid -->
			</div> <!-- /.first-footer -->
			<div class="bottom-footer">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<p class="copyright">Copyright © 2018 <a href="#">OOP GROUP PROJECT </a>
                            </p>
						</div> <!-- /.col-md-6 -->
						<div class="col-md-6 credits">
							
						</div> <!-- /.col-md-6 -->
					</div> <!-- /.row -->
				</div> <!-- /.container-fluid -->
			</div> <!-- /.bottom-footer -->
		</div> <!-- /.site-footer -->

	</div> <!-- /#main-content -->

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
<!-- templatemo 394 sonic -->
</body>
</html>