<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/Photo.css" rel="stylesheet">
<link href="homeN.css" rel="stylesheet">

<body BACKGROUND="images/back.jpg">

	<!--header-->
	<div id="head">	
	
	<a href = "newShopping.jsp"><img src="imagesHome/shopping.jpg"  class="shopping"></a>
	 
	  	
	<br>  <br><br>  <br> <br>  <br><br>  <br> <br>  
	
	<!--shopping cart  -->
	
	
	<!--Navigation bar-->
	<ul class="menu">
		<li class="menu"> <a href="Medicine.jsp" >Medicine </a></li>
		<li class="menu"> <a href="MedicalDevices.jsp" >Medical Devices </a></li>
		<li class="menu"> <a href="Wellness.jsp" >Wellness </a></li>
		<li class="menu"> <a href="PersonalCare.jsp" >Personal Care</a></li>
		<li style="float:right"> <a href="Prescription.jsp">Upload Prescription</a></li>
			
	</ul>
	
	</div>
	
	<br><br><br>
<div class="col-sm-9 padding-right">
	           <form action="getItemServlet" method="post" >
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
									
									<table border=0></table>
										<img src="images/vitc.png" alt="" height="200px" width="200px" >

										<h3>Vitamin C</h3>
										<p >Rs.15.00</p> 
										<input type="hidden" name="isoNo" value="100" >
										<!-- <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
										
										<input type="submit" value="ADD TO CART">
									
									
									</div>
							    </div>
							</div>
						</div>
</form>	
					
		
		
		<!--  <form action="shoppingServlet" method="post">
		
		<input type="submit" value="submit">
		</form>-->
		
						
				<form action="getItemServlet" method="post" >		
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
									
									<table border=0></table>
										<img src="images/pan.png" alt="" height="200px" width="200px">

										<h3>Panadol</h3>
										<p >Rs.36.00</p>
										<input type="hidden" name="isoNo" value="111" >
										<!-- <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
										<input type="submit" value="ADD TO CART">
									</div>
							    </div>
							</div>
						</div>
				</form>	
				
				
				<form action="getItemServlet" method="post" >
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
									
									<table border=0></table>
										<img src="images/amo.png" alt="" height="200px" width="200px">

										<h3>Amoxicillin</h3>
										<p >Rs.45.00</p>
										<input type="hidden" name="isoNo" value="118" >
										<!--  <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
									    <input type="submit" value="ADD TO CART">
									</div>
							    </div>
							</div>
						</div>
				</form>	
			
				
				<form action="getItemServlet" method="post" >	
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
									
									<table border=0></table>
										<img src="images/as.png" alt="" height="200px" width="200px">

										<h3>Asthalin</h3>
										<p >Rs.100.00</p>
										<input type="hidden" name="isoNo" value="124" >
									  <!--	<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> -->
									  <input type="submit" value="ADD TO CART">
									</div>
							    </div>
							</div>
						</div>
				 </form>
				 
				 <form action="getItemServlet" method="post" >		
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
									
									<table border=0></table>
										<img src="images/om.png" alt="" height="200px" width="200px">

										<h3>Omeprazole</h3>
										<p >Rs.120.00</p>
										<input type="hidden" name="isoNo" value="202" >
										 <!--	<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>-->
									    <input type="submit" value="ADD TO CART">
									</div>
							    </div>
							</div>
						</div>
				  </form>
				  
				  <form action="getItemServlet" method="post" >		
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
									
									<table border=0></table>
										<img src="images/co.png" alt="" height="200px" width="200px">

										<h3>Cough Syrup</h3>
										<p >Rs.375.00</p>
										<input type="hidden" name="isoNo" value="259" >
									 <!--		<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>-->
									    <input type="submit" value="ADD TO CART">
									</div>
							    </div>
							</div>
						</div>
					</form>	

</div>			

<br>  <br><br>  <br><br>  <br><br>  <br><br>  <br><br>  <br><br>  <br><br>  <br><br>  <br><br>  <br><br>  <br><br>  <br><br>  <br><br>  <br><br>  <br><br>  <br><br><br>  <br><br><br>
<!--footer-->
	<footer class="footer">
	<div >
		
		
		<!--facebook logo-->
		<a href = "https://www.facebook.com"><img src="imagesHome/fb.jpeg" alt="fb" id="fb" align="left"></a>
		
		<!--instagram logo-->
		<a href = "https://www.instagram.com"><img src="imagesHome/inst.jpeg" alt="instr" id="inst" align="left"></a>
		
		<!--twitter logo-->
		<a href = "https://twitter.com"><img src="imagesHome/twitter.png" alt="twitter" id="twit" align="left"></a>
		
		<!--google palay store logo-->
		<a href = "https://play.google.com"><img src="imagesHome/gplaynew.jpg" alt="play store" id="google" align="right"></a>
		
		<!--apple app logo-->
		<a href = "https://www.apple.com"><img src="imagesHome/applenew.jpeg" alt="apple app store" id="apple" align="right"></a>
		
		<div class="link">
		
		<!-- about us-->
		<a href="aboutus.html" class="link"  > </a>
		
		<!--  contactus-->
		<a href="#contact us" class="link">  </a>
		
		<!-- privacy policy-->
		<a href="#privacy policy" class="link">  </a>
		</div>
		
	</div>
	</footer>
				  		



</body>
</html>