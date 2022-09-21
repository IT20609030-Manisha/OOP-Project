<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/cart.css" rel="stylesheet">
<link href="homeN.css" rel="stylesheet">

<body BACKGROUND="images/back.jpg">
<br>  <br><br> 
<center><h1>Remove Item from Shopping Cart</h1></center>
<br>  <br><br>  <br><br>  <br><br>  <br>
	    <%
			String itemid = request.getParameter("itemid");
			String itemname = request.getParameter("itemname");
			String price = request.getParameter("price");
			String quantity = request.getParameter("quantity");
			String total = request.getParameter("total");
		%>
		
		
		<form action="DeleteShoppingServlet" method="post">
		<table class="center">
			<tr>
				<td><b>Item ID</b><input type="text" name="itemid" value="<%= itemid %>" ></td>
				<td><b>Item Name</b><input type="text" name="itemname" value="<%= itemname %>"readonly></td>
				<td><b>Price</b><input type="text" name="price" value="<%= price %>"readonly></td>
				<td><b>Quantity</b><input type="text" name="quantity" value="<%= quantity %>"readonly></td>
				<td><b>Total</b><input type="text" name="total" value="<%= total %>"readonly></td>
		
			</tr>
		</table>
		 <br>  <br><br>  <br>
		<center><input type="submit" value="Remove Item"></center>	<br> 	
		</form>
</body>
</html>