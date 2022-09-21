<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Common.css">
<title>Insert title here</title>
</head>
<body>
	<center> <h2 style="color:black;"> Welcome to stock </h2></center>
	
	<a href="StockHome.jsp">Back To Home Page</a><br><br>
	
	<table id="stockTables">
	<tr>
		<th>ISO Number</th>
		<th>Medicine Name</th>
		<th>Category</th>
		<th>Price</th>
		<th>Quantity</th>
		<th>Expiry Year</th>
		<th>Expiry Month</th>
		<th>Prescription</th>
	</tr>
	
	<c:forEach var="med" items="${medDetails}">

		
		<tr>
			<td>${med.isoNumber}</td>
			<td>${med.medicineName}</td>
			<td>${med.category}</td>
			<td>${med.price}</td>
			<td>${med.quantity}</td>
			<td>${med.expiryYear}</td>
			<td>${med.expiryMonth}</td>
			<td>${med.prescription}</td>

		</tr>
		
		
		
	</c:forEach>
	
	</table>
</body>
</html>