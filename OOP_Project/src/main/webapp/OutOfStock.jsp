<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="DisplayMed.css">

<style>
	body{
		background-image:url("Images2/outofstocklogo.jpeg");
		background-repeat:no-repeat;
		background-attachment: fixed;
		background-position: right bottom;
	}
</style>

<title>Out of Stock Medicine</title>
</head>
<body>
	<br><br><br>
	<table class="display" style="font-family: Arial">
		<c:forEach var="med" items="${medDetails}">
		<tr>
		<td>ISO Number: </td>
		<td> ${med.isoNumber}</td>
		</tr>
		
		<tr>
		<td>Medicine Name: </td>
		<td> ${med.medicineName}</td>
		</tr>
		
		<tr>
		<td>Category: </td>
		<td> ${med.category}</td>
		</tr>
		
		<tr>
			<td><br> </td>
			<td><br> </td>
		</tr>
		</c:forEach>
	</table>
	
	<!-- <img src="Images2/outofstocklogo.jpeg" align="right" > -->

</body>
</html>