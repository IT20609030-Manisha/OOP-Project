<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Account</title>
<link rel = "stylesheet" href = "Supplier.css">
</head>
<body>

<!-- header -->
<jsp:include page="header.jsp"></jsp:include>

<div class = "heading"><h3> Create Account </h3></div> 
	<div align = "left" class = "sup">
	<form action = "SupplierInsert" method = "post">
	<br><br><br>

		<label> First Name </label><br>
		<input type = "text" name = "fname" class = "inputs"><br><br>
		
		<label> Last Name </label><br>
		<input type = "text" name = "lname" class = "inputs"><br><br>
		
		<label> Contact Number </label><br>
		<input type = "text" name = "connum" class = "inputs" pattern = "[0-9]{10}" title = "10 numbers required"><br><br>
		
		<label> email </label><br>
		<input type = "text" name = "email" class = "inputs" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title = abc@gmail.com><br><br>
		
		<label> UserName </label><br>
		<input type = "text" name = "uname" class = "inputs"><br><br>
		
		<label> Password </label><br>
		<input type = "text" name = "psswrd" class = "inputs" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
		title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"><br><br>
		
	
	<br>
		<input type = "submit" name = "createAccount" value = "Create account" ><br><br>
	</form>
	</div>
	
<!-- footer -->
<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>