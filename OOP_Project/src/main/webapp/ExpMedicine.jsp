<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Common.css">

<style>
	body{
		background-image:url("Images2/expMed3.jpeg");
		background-repeat:no-repeat;
		background-attachment: fixed;
		background-position: right bottom;
	}
</style>

<title>Expiring Medicine</title>
</head>
<body>

	<center> <h2 style="color:black;"> Expiring Medicine </h2></center>
	
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
		<th></th>
	</tr>
	
	<c:forEach var="med" items="${medDetails}">
		
		<c:set var="isoNo" value="${med.isoNumber}" />
		<c:set var="medName" value="${med.medicineName}" />
		<c:set var="medCat" value="${med.category}" />
		<c:set var="medPri" value="${med.price}" />
		<c:set var="medQty" value="${med.quantity}" />
		<c:set var="medExpYr" value="${med.expiryYear}" />
		<c:set var="medExpMon" value="${med.expiryMonth}" />
		<c:set var="medPres" value="${med.prescription}" />
		
	<c:url value="DeleteProfile.jsp" var="medDelete">
		<c:param name="isoNo" value="${isoNo}"/>
		<c:param name="medName" value="${medName}"/>
		<c:param name="medCat" value="${medCat}"/>
		<c:param name="medPri" value="${medPri}"/>
		<c:param name="medQty" value="${medQty}"/>
		<c:param name="medExpYr" value="${medExpYr}"/>
		<c:param name="medExpMon" value="${medExpMon}"/>
		<c:param name="medPres" value="${medPres}"/>
	</c:url>
		
		<tr>
			<td>${med.isoNumber}</td>
			<td>${med.medicineName}</td>
			<td>${med.category}</td>
			<td>${med.price}</td>
			<td>${med.quantity}</td>
			<td>${med.expiryYear}</td>
			<td>${med.expiryMonth}</td>
			<td>${med.prescription}</td>
			<td>
				<a href="${medDelete}">
				<input id="deletebtn" type="button" name="delete" value="DELETE">
				</a>
			</td>
		</tr>
		
		
		
	</c:forEach>
	
	</table>

</body>
</html>