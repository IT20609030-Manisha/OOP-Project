<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Common.css">
<link rel="stylesheet" type="text/css" href="DisplayMed.css">

<style>
	body{
		background-image:url("Images2/medicine2.jpeg");
		background-repeat:no-repeat;
		background-size:100% 130%;
	}
</style>

<title>Display Medicine</title>
</head>
<body>
	
	<br><br><br><br>
	<a href="StockHome.jsp">Back To Home Page</a><br><br>
	
	<table class="display">
	<c:forEach var="med" items="${medDetails}">
		
		<c:set var="isoNo" value="${med.isoNumber}" />
		<c:set var="medName" value="${med.medicineName}" />
		<c:set var="medCat" value="${med.category}" />
		<c:set var="medPri" value="${med.price}" />
		<c:set var="medQty" value="${med.quantity}" />
		<c:set var="medExpYr" value="${med.expiryYear}" />
		<c:set var="medExpMon" value="${med.expiryMonth}" />
		<c:set var="medPres" value="${med.prescription}" />
	
	
		<tr>
		<td>ISO Number </td>
		<td> ${med.isoNumber}</td>
		</tr>
		
		<tr>
		<td>Medicine Name </td>
		<td> ${med.medicineName}</td>
		</tr>
		
		<tr>
		<td>Category </td>
		<td> ${med.category}</td>
		</tr>
		
		<tr>
		<td>Price </td>
		<td> ${med.price}</td>
		</tr>
		
		<tr>
		<td>Quantity </td>
		<td> ${med.quantity}</td>
		</tr>
		
		<tr>
		<td>Expiry Year </td>
		<td> ${med.expiryYear}</td>
		</tr>
		
		<tr>
		<td>Expiry Month </td>
		<td> ${med.expiryMonth}</td>
		</tr>
		
		<tr>
		<td>Need Prescription </td>
		<td> ${med.prescription}</td>
		</tr>
		
		
	</c:forEach>
	
	</table><br><br>
	
	<c:url value="UpdateProfile.jsp" var="medUpdate">
		<c:param name="isoNo" value="${isoNo}"/>
		<c:param name="medName" value="${medName}"/>
		<c:param name="medCat" value="${medCat}"/>
		<c:param name="medPri" value="${medPri}"/>
		<c:param name="medQty" value="${medQty}"/>
		<c:param name="medExpYr" value="${medExpYr}"/>
		<c:param name="medExpMon" value="${medExpMon}"/>
		<c:param name="medPres" value="${medPres}"/>
	</c:url>
	
	<div class="centerBtn">
	<a href="${medUpdate}">
	<input id="updatebtn" type="button" name="update" value="UPDATE"><br><br>
	</a>
	</div>
	
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
	
	<div class="centerBtn">
	<a href="${medDelete}">
	<input id="deletebtn" type="button" name="delete" value="DELETE">
	</a>
	</div>
	
</body>
</html>