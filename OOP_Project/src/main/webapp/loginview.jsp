<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body background = "images/login.jpeg" class = "image">

<!-- header -->
<jsp:include page="header.jsp"></jsp:include>

<br><br><br><br>


<div align = "center">

	
	<br><br>

	<h3> Log In </h3>
	
	<form method = "post" action = "LoginControl">
		<label> Username </label>
		<input type = "text" name = "uname" required><br><br>
		
		<label> Password </label>
		<input type = "password" name = "password" placeholder = "########" required><br><br>
		
		<input type = "submit" name = "login" value = "LogIn"><br>
		<br><br>
		
	</form>
	
	<a href = "CreateAccount.jsp"> <input type = "submit" value = "Create account"></a>
</div>

<br><br><br><br><br><br>
<!-- footer -->
<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>