<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel = "stylesheet" href = "Supplier.css">
<title>BID view</title>
</head>
<body>
	
	<div class = "heading"><h3> Register for Bid </h3></div> 
	<br><br>
	
	<div class = "sup">
	<form method = "POST" action = "BIDInsert">
		
		<label> Procurement Ref. No. </label><br>
		<input type = "text" name = "ref"  class = "inputs" maxlength = "8" required pattern = "[0-9]{8}" title = "must include 8 characters"></td></tr><br><br>
		
		<label> Supplier ID </label><br>
		<input type = "text" name = "sup" class = "inputs" required><br><br>
		
		<label> Unit Price </label><br>
		<input type = "text" name = "price" class = "inputs" required><br><br>
		
		<label> Supplying Quantity </label><br>
		<input type = "text" name = "supqty" class = "inputs" required><br><br>
		</table>
		
		<br><br>
		<input type = "submit" name = "BID" value = "Send To Bid">
		<br><br>
	</form>
	</div>
</body>
</html>