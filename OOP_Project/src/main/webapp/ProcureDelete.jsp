<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel = "stylesheet" href = "Supplier.css">
<title>Procure delete</title>
</head>
<body>

	<%
		int refNo = Integer.parseInt(request.getParameter("RefNo"));
		String itemName = request.getParameter("itemName");
		int quantity = Integer.parseInt(request.getParameter("qty"));
		String days = request.getParameter("days");
	%>
	
	<div class = "heading"><h3> Delete procurement </h3></div>
	<br><br>
	<img src = "images/med.jpeg" align = "right" width = "800px" height = "400px">
	<div class = "forms">
	<form action = "ProcurementDelete" method = "post">
	<table>		
			<tr><td><label> Reference Number </label></td>
			<td><input type = "text" name = "ref" maxlength = "8" value = "<%=refNo%>" readonly></td></tr><br><br>
			
			<tr><td><label> Description </label></td>
			<td><input type = "text" name = "item" value = "<%=itemName%>"></td></tr>
			
			<tr><td><label> Quantity </label></td>
			<td><input type = "text" name = "qty" value = "<%=quantity%>"></td></tr>
		
			<tr><td><label> Closing date  </label></td>
			<td><input type = "text" name = "bidClose" value = "<%=days%>"></td></tr>
		</table>	
		<br><br>
			<input type = "submit" name = "updateProcure" value = "Delete Procurement">
	</form>
	</div>
</body>
</html>