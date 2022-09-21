<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel = "stylesheet" href = "Supplier.css">
<title>BIDUpdate</title>
</head>
<body>
 
	<%
		int bidid = Integer.parseInt(request.getParameter("bidid"));
		int proid = Integer.parseInt(request.getParameter("ref"));
		String suppid = request.getParameter("suppid");
		double unitprice = Double.parseDouble(request.getParameter("uprice"));
		double qty = Double.parseDouble(request.getParameter("qty"));
	%>
	
	<div class = "heading"><h3> Update BID Details </h3></div>
	<br><br>
	<img src = "images/bid.png" align = "right" width = "800px" height = "400px">
	<div class = "forms">
	
	<form action = "BIDUpdate" method = "post">
		<table>	
			<tr><td><label> BID ID </label></td>
			<td><input type = "text" name = "bidid" maxlength = "8" value = "<%=bidid%>" readonly></td></tr>
			
			<tr><td><label> Procurement Ref. No. </label></td>
			<td><input type = "text" name = "ref" maxlength = "8" value = "<%=proid%>" readonly></td></tr>
			
			<tr><td><label> Supplier ID  </label></td>
			<td><input type = "text" name = "suppid" value = "<%=suppid%>" readonly></td></tr>
			
			<tr><td><label> Unit Price </label></td>
			<td><input type = "text" name = "uprice" value = "<%=unitprice%>"></td></tr>
		
			<tr><td><label> Supplying Quantity  </label></td>
			<td><input type = "text" name = "qty" value = "<%=qty%>"></td></tr>
		</table>	
		<br><br>	
			<input type = "submit" name = "bidupdate" value = "Update BID">
			
	</form>
	</div>
</body>
</html>