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

<title>Update Medicine</title>
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
	
	<br><br>
	<form id="updateForm" method="post" action="UpdateStockServlet">
	
	
	ISO Number <br>
	<input type="text" name="iso" value="<%=Iso %>" readonly><br><br>	
	
	Medicine Name <br> 
	<input type="text" name="name" value="<%=MedName %>"><br><br>
	
	Category <br>
	<select name="cat">
		<option value="<%=MedCat %>" selected ><%=MedCat %></option>
		<option value="Medicine">Medicine</option>
		<option value="Medical Devices">Medical Devices</option>
		<option value="Wellness">Wellness</option>
		<option value="Personal Care">Personal Care</option>
	</select><br><br>
	
	Price <br>
	<input type="text" name="pri" value="<%=MedPri %>"><br><br>	
	
	Quantity <br>
	<input type="text" name="qty" value="<%=MedQty %>"><br><br>
	
	Expiry Year <br>
	<input type="text" name="expYr" value="<%=MedExpYr %>"><br><br>
	
	Expiry Month <br>
	<select name="expMon">
		<option value="<%=MedExpMon %>" selected ><%=MedExpMon %></option>
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
	
	Need Prescription <br> 
	<input type="text" name="pres" value="<%=MedPres %>"><br><br>
	
	<input id="updatebtn" type="submit" name="submit" value="UPDATE">
	
	</form>
	

</body>
</html>