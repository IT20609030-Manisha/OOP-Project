<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="home.css">
<link rel="stylesheet" href="Pay.css">


<title>Insert title here</title>
</head>
<body background = "PayImages/004.jpg" class = "image">


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

<br> <br> <br> <br> <br> <br>

<table>
<c:forEach var="Pay" items ="${payDetails}">

<tr>
	<td> Card Number </td>
	<td>${Pay.Card_Number}</td>
</tr>


<tr>
	<td> Expiry Date </td>
	<td>${Pay.Expiry_Date}</td>
</tr>


<tr>
	<td> First Name </td>
	<td>${Pay.First_Name}</td>
</tr>


<tr>
	<td> Last Name </td>
	<td>${Pay.Last_Name}</td>
</tr>


<tr>
	<td> CVV </td>
	<td>${Pay.CVV}</td>
</tr>


</c:forEach>
</table>

<br> <br> <br> <br> <br> <br>
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