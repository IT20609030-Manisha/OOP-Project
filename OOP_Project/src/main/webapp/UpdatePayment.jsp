<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="home.css">


<title>Insert title here</title>
</head>
<body background = "PayImages/005.jpg">


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
	
	
		<br>  <br><br>  <br> <br>  

	<%
	String Payment_ID = request.getParameter("Payment_ID");
	String Card_Number = request.getParameter("Card_Number");
	String Expiry_Date = request.getParameter("Expiry_Date");
	String First_Name = request.getParameter("First_Name");
	String Last_Name = request.getParameter("Last_Name");
	String CVV = request.getParameter("CVV");
	

	%>

<form action = "UpdatePaymentServlet" method = "post">

	 Payment ID   : <input type = "text" name = "Payment_ID" value = "<%=Payment_ID %>" readonly> <br><br>
     Card Number  : <input type = "text" name = "Card_Number" value = "<%=Card_Number %>" > <br><br>
     Expiry Date  : <input type = "text" name = "Expiry_Date" value = "<%= Expiry_Date %>" > <br><br>
     First Name   : <input type = "text" name = "First_Name" value = "<%= First_Name %>" > <br><br>
     Last Name    : <input type = "text" name = "Last_Name" value = "<%= Last_Name %>" > <br><br>
     CVV          : <input type = "text" name = "CVV" value = "<%= CVV %>" > <br><br>
     
 <br> <br>

     <input type = "submit" name = "submit" value = "Update data"> 

</form>


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