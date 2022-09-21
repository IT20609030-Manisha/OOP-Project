<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="StLogin.css">
<title>Staff Login</title>

</head>
<body>
	
	<form id="LoginForm" method="post" action="StaffServlet">
	
		<label style="text-align:center;"> <h2> Staff Login </h2> </label>
	
		Staff ID &ensp; &ensp;
		<input type="text" name="staffid" placeholder="Enter Staff ID" ><br><br>
		
		Password &ensp;
		<input type="password" name="password" placeholder="Password" ><br><br>
		
		<input type="submit" id="loginbtn" value="LOGIN">
	
	</form>
	
</body>
</html>