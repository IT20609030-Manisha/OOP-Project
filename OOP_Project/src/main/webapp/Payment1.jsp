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
<body background = "PayImages/003.jpg" class = "image">


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


<form action = "PayInsert" method = "post">
	
<input type = "radio" name = "1" value = "Credit or Debit Card" > Credit or Debit Card <br>
<pre>     <input type = "radio" name = "3" value = "Visa"> Visa <br> </pre>
<pre>     <input type = "radio" name = "3" value = "Master"> Master <br> </pre>

<div>  

    
<pre>      Card Number  : <input type = "text" name = "Card_Number" required> </pre>        
<pre>      Expiry Date  : <input type = "date" name = "Expiry_Date"  required> </pre>
<pre>      First Name   : <input type = "text" name = "First_Name"  required > </pre> 
<pre>      Last Name    : <input type = "text" name = "Last_Name" required > </pre> 
<pre>      CVV          : <input type = "text" name = "CVV" required > </pre> 

</div> 

<br>
<input type = "radio" name = "1" value = "Cash On Delivery" > Cash On Delivery <br>
<br>

<input type = "submit" name = "Submit" value = "Submit">

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