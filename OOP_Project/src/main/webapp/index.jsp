<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel = "stylesheet" href = "Supplier.css">
<title>index</title>

</head>
<body background = "images/med1.jpeg" class = "image">
	
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	
	<br><br><br>
	
	<h1 id = "h3"><center><font size = "30"> OverDose <br> Procurement System </font></center></h1>
	
	<br><br>
	
	<h3 class = "index"><font size = "5"> <center><b> Search for Procurements </b></center></font></h3>
	
	<div class = "sup">
		<form method = "post" action = "ProcurementSearch">
				<label><font size = "4"><b> Enter item name </b></font></label>
				<input type = "text" name = "searchproc" class = "textArea" required>
				<input type = "submit" name = "searchbtn" value = "Search Procurements">
		</form>	
	</div>	
	
	
	
	<br><br><br>
	
	<h3 class = "index"><font size = "5"> <center><b> Search your BID details </b></center></font></h3>
	<div class = "sup">
		<form method = "post" action = "BIDSearch">		
				
				<label><font size = "4"><b> Enter supplier ID </b></font></label>
				<input type = "text" name = "searchbid" class = "textArea" required>
				<input type = "submit" name = "searchbtnbid" value = "Search BID">
		</form>	
	</div>
	
	<!-- footer -->
	<jsp:include page="Footer.jsp"></jsp:include>
	
</body>
</html>