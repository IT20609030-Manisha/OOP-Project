<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="StockHome.css">
<link rel="stylesheet" type="text/css" href="Common.css">
<title>Stock Home</title>
</head>
<body>
	
	  
	<br><br>
	<div id="block2">
		<div id="leftblock2">
		
			<form id="HomeForms" method="post" action="SearchServlet">
				
				
				Search Medicine<br><br>
				<input type="text" name="medId" placeholder="Enter ISO Number"> <br><br>
		
				
				<input id="HomeButtons" type="submit" value="Search">
				
			</form>
		
		<br><br>
		
		
			<form id="HomeForms" method="post" action="CheckExpiringMedServlet">
			
				Expiry Year :<br><br>
				<input type="text" name="expYear" placeholder="Enter Year" ><br><br>
				
				Expiry Month :<br><br>
				<select name="expMonth">
					<option value="none">None</option>
					<option value="1">01</option>
					<option value="2">02</option>
					<option value="3">03</option>
					<option value="4">04</option>
					<option value="5">05</option>
					<option value="6">06</option>
					<option value="7">07</option>
					<option value="8">08</option>
					<option value="9">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select><br><br>
				
				<input id="HomeButtons" type="submit" value="Search">
				
			</form>
		
		</div>
		
		<div id="rightblock2">
		<br><br>
		
			<form id="HomeForms2" method="post" action="ViewStockServlet">
				<input id="HomeButtons" type="submit" value="VIEW STOCK"><br><br>
			</form>
		
		
		<a href="AddNewMedicine.jsp">
		<input id="HomeButtons" type="button" value="ADD NEW MEDICINE">
		</a><br><br>
		
		
			<form method="post" action="OutOfStockServlet">
				<input id="HomeButtons" type="submit" value="CHECK OUT OF STOCK MEDICINE"><br><br>
			</form>
		
		
		<a href="ProcureView.jsp">
		<input id="HomeButtons" type="button" value="CHECK PROCUREMENT">
		</a><br><br>
		</div>
	</div>
</body>
</html>