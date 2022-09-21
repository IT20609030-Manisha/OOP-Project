<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="home.css">
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid  #00bfff;
  			border-collapse: collapse;
		}
		
		th, td {
  		background-color: #C9EFFE;
  		height: 40px;
}


		
		
 input[type=button] {
  background-color:  #00cccc;
  border: none;
  color: black;
  padding: 10px 100px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
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
	
	<p align="right">
		<button id="btn2" ><a href ="Payment1.jsp"> Go to payment page</a></button>
	</p>




<img src="deliveryimg/h1.jpg"  width="140" height="140" align="left"> 
<div>



<center>	<table style="width:100%">

	<c:forEach var="cus" items="${cusDetails}">
	<c:set var="deliveryID" 	value="${cus.deliveryID}"/>
	<c:set var="name" 			value="${cus.name}"/>
	<c:set var="email" 			value="${cus.email}"/>
	<c:set var="phone" 			value="${cus.phone}"/>
	<c:set var="address" 		value="${cus.address}"/>
	<c:set var="province" 		value="${cus.province}"/>
	
	<h2> My Delivery information </h2>
	
	<tr>
		<th>Delivery ID</th>
		<td>${cus.deliveryID}</td>
	</tr>
	
	<tr>
		<th> Name</th>
		<td>${cus.name}</td>
	</tr>
	
	<tr>
		<th>Email</th>
		<td>${cus.email}</td>
	</tr>
	
	<tr>
		<th>Phone</th>
		<td>${cus.phone}</td>
	</tr>
	
	<tr>
		<th>Address</th>
		<td>${cus.address}</td>
	</tr>
	
	<tr>
		<th>Province</th>
		<td>${cus.province}</td>
	</tr>
	
	</c:forEach>
	</table> 
	</center>
	
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="deliveryID" 	value="${deliveryID}"/>
		<c:param name="name" 		value="${name}"/>
		<c:param name="email" 		value="${email}"/>
		<c:param name="phone" 		value="${phone}"/>
		<c:param name="address" 	value="${address}"/> 
		<c:param name="province" 	value="${province}"/> 
	</c:url>
	
	<br><br><br>
	
	
	<a href="${cusupdate}">
	<center>	<input type="button" name="update" value="Update My Data"> </center>
	</a>
	
	<br>
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="deliveryID" 	value="${deliveryID}" />
		<c:param name="name" 		value="${name}" />
		<c:param name="email" 		value="${email}" />
		<c:param name="phone" 		value="${phone}" />
		<c:param name="address" 	value="${address}" />
		<c:param name="province" 	value="${province}" />
	</c:url>
	
	<a href="${cusdelete}">
	<center>	<input type="button" name="delete" value="Delete My Data"> </center>
	</a>
</div>	



<hr>
	<!--footer-->
	
	<footer class="footer" >
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
	
	
	
	
	