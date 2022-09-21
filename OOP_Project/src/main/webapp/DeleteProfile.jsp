<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Common.css">

<style>
	body{
		background-image:url("Images2/display4.jpeg");
		background-repeat:no-repeat;
		background-attachment: fixed;
		background-size: cover;
	}
</style>

<title>Delete Medicine</title>
</head>
<body>
	
	<%
		String Iso = request.getParameter("isoNo");
		String MedName = request.getParameter("medName");
		String MedCat = request.getParameter("medCat");
		String MedPri = request.getParameter("medPri");
		String MedQty = request.getParameter("medQty");
		String MedExpYr = request.getParameter("medExpYr");
		String MedExpMon = request.getParameter("medExpMon");
		String MedPres = request.getParameter("medPres");
	%>
	
	<br><br><br>
	<form id="updateForm" method="post" action="DeleteStockServlet">
	
	ISO Number <br>
	<input type="text" name="iso" value="<%=Iso %>" readonly><br><br>	
	
	Medicine Name <br> 
	<input type="text" name="name" value="<%=MedName %>" readonly><br><br>
	
	Category <br>
	<input type="text" name="cat" value="<%=MedCat %>" readonly><br><br>
	
	Price <br>
	<input type="text" name="pri" value="<%=MedPri %>" readonly><br><br>	
	
	Quantity <br>
	<input type="text" name="qty" value="<%=MedQty %>" readonly><br><br>
	
	Expiry Year <br>
	<input type="text" name="expYr" value="<%=MedExpYr %>" readonly><br><br>
	
	Expiry Month <br>
	<input type="text" name="expMon" value="<%=MedExpMon %>" readonly><br><br>
	
	Need Prescription <br>
	<input type="text" name="pres" value="<%=MedPres %>" readonly><br><br>
	
	<input id="deletebtn" type="submit" name="submit" value="DELETE">
	
	</form>
	
</body>
</html>