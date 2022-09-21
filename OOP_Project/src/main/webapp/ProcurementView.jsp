<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel = "stylesheet" href = "Supplier.css">
<title>ProcurementView</title>

</head>
<body>
	
	<div class = "heading"><h3> Add New Procurement </h3></div>
	 <br><br>
	<div class = "sup">
		<form method = "post" action = "ProcurementInsert">
	
			<label> Reference Number </label><br>
			<input type = "text" name = "ref" maxlength = "8" class = "inputs" pattern = "[0-9]{8}" title = "must include 8 characters" required><br><br>
			
			<label> Description </label><br>
			<input type = "text" name = "item" class = "inputs" required><br><br>
			
			<label> Quantity </label><br>
			<input type = "text" name = "qty" class = "inputs" required><br><br>
		
			<label> Closing date  </label><br>
			<input type = "date" name = "bidClose" class = "inputs" placeholder = "DD/MM/YYYY" required><br><br>
		</table>
		<br><br>	
		<input type = "submit" name = "AddProcure" value = "Add Procurement">
		<br><br>
		
	</form>
	</div>
	
	
</body>
</html>