<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body background = "images/med1.jpeg" class = "image">

<!-- header -->
<jsp:include page="header.jsp"></jsp:include>

<br><br><br><br>

<div align = "center">

<br><br>

	<h3> **Click here to add new procurement</h3>
	<a href = "ProcurementView.jsp"> <input type = "submit" value = "Add Procurements"></a>
	
	<br><br><br>
	<h3> **Click here to procurement list</h3>
	<form method="post" action="ProcurementServlet">
		<input type="submit" value="View Procurements"><br><br>
	</form>
</div>	

<br><br><br><br><br>
<!-- footer -->
<jsp:include page="Footer.jsp"></jsp:include>

		
</body>
</html>