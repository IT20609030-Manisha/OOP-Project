<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="home.css">
<link rel="stylesheet" href="Pay.css">


<title>Insert title here</title>
</head>
<body background = "PayImages/002.jpg" class = "image">


<!--header-->
	<div id="head">	
	
	<a href = ""><img src="imagesHome/shopping.jpg"  class="shopping"></a>
	 
	  	
	<br>  <br><br>  <br> <br>  <br><br>  <br> <br>  
	
	<!--shopping cart  -->
	
	
	<!--Navigation bar-->
	<ul class="menu">
		<li class="menu"> <a href="#" >Medicine </a></li>
		<li class="menu"> <a href="#" >Medical Devices </a></li>
		<li class="menu"> <a href="#" >Wellness </a></li>
		<li class="menu"> <a href="#" >Personal Care</a></li>
		<li style="float:right"> <a href="#">Upload Prescription</a></li>
			
	</ul>
	
	</div>
	
		<br>  <br><br>  <br> <br>  
 
 <c:forEach var = "P" items = "${payDetails}">
 
	    <c:set var="Payment_ID" value="${P.payment_ID}" />
		<c:set var="Card_Number" value="${P.card_Number}" />
		<c:set var="Expiry_Date" value="${P.expiry_Date}" />
		<c:set var="First_Name" value="${P.first_Name}" />
		<c:set var="Last_Name" value="${P.last_Name}" />
		<c:set var="CVV" value="${P.CVV}" />
		
		
		
		<c:url value="UpdatePayment.jsp" var="PayUpdate">
		<c:param name="Payment_ID" value="${Payment_ID}"/>
		<c:param name="Card_Number" value="${Card_Number}"/>
		<c:param name="Expiry_Date" value="${Expiry_Date}"/>
		<c:param name="First_Name" value="${First_Name}"/>
		<c:param name="Last_Name" value="${Last_Name}"/>
		<c:param name="CVV" value="${CVV}"/>
		
	</c:url>
		
		
		
		<c:url value="PayDelete.jsp" var="PayDelete">
		<c:param name="Payment_ID" value="${Payment_ID}"/>
		<c:param name="Card_Number" value="${Card_Number}"/>
		<c:param name="Expiry_Date" value="${Expiry_Date}"/>
		<c:param name="First_Name" value="${First_Name}"/>
		<c:param name="Last_Name" value="${Last_Name}"/>
		<c:param name="CVV" value="${CVV}"/>
		
	</c:url>
		
		
		
 <pre>  Payment ID   :  ${P.payment_ID}  <br></pre> 
 <pre>  Card Number  :  ${P.card_Number} <br></pre> 
 <pre>  Expiry Date  :  ${P.expiry_Date} <br></pre> 
 <pre>  First Name   :  ${P.first_Name}  <br></pre> 
 <pre>  Last Name    :  ${P.last_Name }  <br></pre> 
 <pre>  CVV          :  ${P.CVV}         <br><br><br><br></pre> 
	
	
	
 </c:forEach>
 
 <a href="${PayUpdate}">
	<input type="submit" name="update" value="UPDATE">
	</a>
	
	
	<a href="${PayDelete}">
	<input type="submit" name="delete" value="DELETE">
	</a>
 
<br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
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








