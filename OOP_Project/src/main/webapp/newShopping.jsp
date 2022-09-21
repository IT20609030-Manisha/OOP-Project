<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart</title>
</head>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/cart.css" rel="stylesheet">
<link href="homeN.css" rel="stylesheet">

<body BACKGROUND="images/back.jpg">
<br>  <br><br>  <br>
	<table id="shop" class="center" cellpadding="2" cellspacing="2" border="1">
	
	<tr>
		<td><b>Item ID</b></td>
		<td><b>Item Name</b></td>
		<td><b>Price</b></td>
		<td><b>Quantity</b></td>
		<td><b>Total</b></td>
		
		
	</tr>
	
	
	<c:forEach var="c" items="${displayDetail}">
	
	<c:set var="itemid" value="${c.itemid}"/>
	<c:set var="itemname" value="${c.itemname}"/>
	<c:set var="price" value="${c.price}"/>
	<c:set var="quantity" value="${c.quantity}"/>
	<c:set var="total" value="${c.total}"/>
	
	<tr>
		<td>${c.itemid}</td>
		<td>${c.itemname}</td>
		<td>${c.price}</td>
		<td>${c.quantity}</td>
		<td>${c.total}</td>
		
	</tr>
	
	
	</c:forEach>	
</table>		
	
	
	<c:url value="UpdateShopping.jsp" var="shopupdate">
		<c:param name="itemid" value="${itemid}"/>
	    <c:param name="itemname" value="${itemname}"/>
	    <c:param name="price" value="${price}"/>
	    <c:param name="quantity" value="${quantity}"/>
	    <c:param name="total" value="${total}"/>
	</c:url>
	<br><br>
	<a href="${shopupdate}">
		<input type="button" name="update" value="Update Quantity">
	</a>
	
	<c:url value="DeleteShopping.jsp" var="shopdelete">
		<c:param name="itemid" value="${itemid}"/>
	    <c:param name="itemname" value="${itemname}"/>
	    <c:param name="price" value="${price}"/>
	    <c:param name="quantity" value="${quantity}"/>
	    <c:param name="total" value="${total}"/>
	</c:url>
	
	<a href="${shopdelete}">
		<input type="button" name="delete" value="Remove Item">
	</a>
	<br><br><br><br>
	
	<a href="customerinsert.jsp">
	<center><button type="submit" name="submit" id="subbtn" class="submit-btn"><b>CHECKOUT</b></button></center><br/><br/>
	</a>		
	
	
	
	
</body>
</html>