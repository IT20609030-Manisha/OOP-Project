<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>update customer</title>
	<link rel="stylesheet" href="home.css">
	
	<style> 

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  background-color: #F9F5F4;
  box-sizing: border-box;
}

 input[type=submit], input[type=reset] {
  background-color:  #00cccc;
  border: none;
  color:black;
  padding: 10px 100px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}

div {
  padding: 20px;
}
	
	</style>
</head>
<body>

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
	
	<br> <br> <br> <br>


<img src="deliveryimg/h1.jpg"  " width="140" height="140" align="left">

	<%
		String deliveryID 	= request.getParameter("deliveryID");
		String name 		= request.getParameter("name");
		String email 		= request.getParameter("email");
		String phone 		= request.getParameter("phone");
		String address 		= request.getParameter("address");
		String province 	= request.getParameter("province");
	%>
	
	
	
<center>	<h2>Delivery Account </h2>  </center>
	
	 <div>
	 
	<form action="UpdateCustomerServlet" method="post">
	<br> <br> <br> <br>
	
	<table>
		<tr>
			<td> <b> Delivery ID  </b>	</td>
			<td><input type="text" name="deliveryID" size="50"  value="<%= deliveryID %>" readonly></td>
		</tr>
		
		<tr>
			<td> <b>Name </b> </td>
			<td><input type="text" name="name" value="<%= name %>" ></td>
		</tr>
		
		<tr>
		<td> <b>Email </b> </td>
		<td><input type="text" name="email" value="<%= email %>" ></td>
	</tr>
	
	<tr>
		<td> <b> Phone number </b> </td>
		<td><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>
	
	<tr>
		<td> <b> Address </b> </td>
		<td><input type="text" name="address" value="<%= address %>" ></td>
	</tr>
	
	<tr>
		<td> <b> Province </b> </td>
		<td><input type="text" name="province" value="<%= province %>" ></td>
	</tr>	
	
	</table>
	<br>
	
	<input type="submit" name="submit" value="Update My Data">
	
	
	</form>
	</div>
	
	<hr>
	<!--footer-->
	
	<footer >
	<div class="footer" >
		
		
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