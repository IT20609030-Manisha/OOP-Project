<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Information</title>
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


input[type=text]:focus {
  background-color: #e0feff;
}

 input[type=submit], input[type=reset] {
  background-color:  #00cccc;
  border: none;
  color: black;
  padding: 10px 100px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}

 .container {
  position: relative;
  text-align: center;
  color: black;
}
  
  
  .centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);

div {
  border-radius: 5px;
  background-color: #f2f2f2;
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




<div class="container">
<img src="deliveryimg/med4.jpg" height="400"  style="width:100%;">
<div class= "centered"> <h1> <b> Same-Day Delivery. <br> Delivery today, across town or across the country.</b> </h1> </div>
</div>


<marquee width="80%" direction="right" height="120px"  >
<img src="deliveryimg/de2.jpg" width="120" height="100" style="float:left;" />

<b>  <p style="color:red">  

<b>  Free home delivery in your first order.  </b> 
</marquee>


<img src="deliveryimg/h1.jpg"  width="140" height="140" align="left">
	<center><b><h2> Delivery Information </h2></b> </center > 
	<div>
	
	
	<form action="CustomerInsertServlet" method="post">
		
		<br><br><br><br><br>		<b>	 Delivery ID 	</b>  	<input type="text"   name="deliveryID"   size="50"   maxlength="9"    placeholder="Enter your NIC number .( Ex:908563214)" required / >   <br>  <br>
	  			 					<b>	 Name 			</b>    <input type="text"   name="name"         size="50"   placeholder="Your Name..." required / >   <br>  <br>
	   			 					<b>	 Email 			</b>    <input type="text"   name="email"        size="50"   pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"           placeholder="Your Email..." required / >   <br>  <br>
	  			 					<b>	 Phone Number 	</b> 	<input type="text"   name="phone" 		 size="50"   pattern="[0][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]"  placeholder="Your Phone Number..."  >  <br>   <br>
	  			 					<b>	 Address 		</b>    <input type="text"   name="address" 	 size="50"   placeholder="Your Address..." required / >    <br><br>
	  			 		
	  			 	
   				  				   <b>	 Province </b>  <select id="province" input type="text" name="province" >
     									<option value="Central">		Central			</option>
      									<option value="Eastern">		Eastern			</option>
     									<option value="North Central">	North Central	</option>
     									<option value="Nothern">		Nothern			</option>
     									<option value="North Western">	North Western	</option>
      									<option value="Sabaragamuwa">	Sabaragamuwa	</option>
      									<option value="Southern">		Southern		</option>
      									<option value="Uva">			Uva				</option>
      									<option value="Western">		Western			</option>
      									
     					 </select> <br> <br>
    
		
					 <input type="submit" name="submit" value="Submit">  
					 <input type="reset"  value="Reset"> 
					 
					 
	</form>
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