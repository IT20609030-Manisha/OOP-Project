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
<!-- <style>
	background-image : url("images/back.jpg");
    background-repeat:no-repeat;
	background-size:100% 100%;
	background-size:cover;
    background-attachment: fixed;
</style> -->
<br>  <br><br> 
<center><h1>Update Quantity</h1></center>
<br>  <br><br>  <br><br>  <br><br>  <br>
		<%
			String itemid = request.getParameter("itemid");
			String itemname = request.getParameter("itemname");
			String price = request.getParameter("price");
			String quantity = request.getParameter("quantity");
			String total = request.getParameter("total");
		%>
		
		
		<form action="UpdateShoppingServlet" method="post">
		<table class="center">
			<tr>
				<td><b>Item ID</b><input type="text" name="itemid" value="<%= itemid %>" ></td>
				<td><b>Item Name</b><input type="text" name="itemname" value="<%= itemname %>"readonly></td>
				<td><b>Price</b><input type="text" name="price" value="<%= price %>"readonly></td>
				<td><b>Quantity</b><input type="text" name="quantity" value="<%= quantity %>"></td>
				<td><b>Total</b><input type="text" name="total" value="<%= total %>"readonly></td>
		
			</tr>
		</table>
		<br>  <br><br>  <br>
		<center><input type="submit" value="Update Quantity"></center><br> 	
		</form>
</body>
</html>