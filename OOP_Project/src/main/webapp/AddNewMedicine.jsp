<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="AddMed.css">
<title>Register Medicine</title>
</head>
<body>

	
	<div id="RegSec" >
	<form id="RegisterForm" method="post" action="AddStock">
	
		<label style="text-align:center;"> <h2> Register Medicine</h2> </label><br>
		
		ISO Number :<br>
		<input class="regInput" type="text" name="isoNumber"  required><br><br><br>
		
		Medicine Name : <br>
		<input class="regInput" type="text" name="medName"  required><br><br><br>
		
		<!--  Type :
		<input type="text" name="medType" ><br><br> -->
		
		Category : <br>
		<select name="medCategory">
			<option value="none">None</option>
			<option value="Medicine">Medicine</option>
			<option value="Medical Devices">Medical Devices</option>
			<option value="Wellness">Wellness</option>
			<option value="Personal Care">Personal Care</option>
		</select><br><br><br>
		
		Price :<br>
		<input class="regInput" type="text" name="price"  required><br><br><br>
		
		Quantity :<br>
		<input class="regInput" type="text" name="MedQty"  ><br><br><br>
		
		Expiry Year :<br>
		<input class="regInput" type="text" name="medExpYear" ><br><br><br>
		
		Expiry Month :<br> 
		<select name="medExpMonth">
			<option value="none">None</option>
			<option value="1">01</option>
			<option value="2">02</option>
			<option value="3">03</option>
			<option value="4">04</option>
			<option value="5">05</option>
			<option value="6">06</option>
			<option value="7">07</option>
			<option value="8">08</option>
			<option value="9">09</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
		</select><br><br><br>
		
		Need Prescription :
		<input type="radio" name="medPrescript" value="Yes">Yes &emsp; &emsp; 
		<input type="radio" name="medPrescript" value="No">No <br><br><br><br>
		
		
		<input id="submitbtn" type="submit" value="ADD TO STOCK">
	</form>
	</div>
	
</body>
</html>