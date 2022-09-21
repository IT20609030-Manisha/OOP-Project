<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ProcurementList</title>.
<link rel = "stylesheet" href = "Supplier.css">
</head>
<body>
	
	<div class = "heading"><h3> Procurement</h3></div>
		<br><br>
		
	<div class = "table">
		<table border = "1" cellpadding = "12">
		
			<tr>
					<td> Reference Number </td> 
				
					<td> Description </td> 					
				
					<td> Quantity </td> 					
				
					<td> Closing date </td> 
					
			</tr>
			
			<c:forEach var ="pro_new" items="${Procdetails}">
			
			<c:set var = "RefNo" value = "${pro_new.referenceNo}"/>
			<c:set var = "itemName" value = "${pro_new.description}"/>
			<c:set var = "quantity" value = "${pro_new.quantity}"/>
			<c:set var = "days" value = "${pro_new.date}"/>
			
			
			<c:url value = "ProcurementUpdate.jsp" var = "procUpdate">                  
					<c:param name = "RefNo" value = "${RefNo}"/>
					<c:param name = "itemName" value = "${itemName}"/>
					<c:param name = "qty" value = "${quantity}"/>
					<c:param name = "days" value = "${days}"/>					
			</c:url>
			
			<c:url value = "ProcureDelete.jsp" var = "ProcureDelete">
					<c:param name = "RefNo" value = "${RefNo}"/>
					<c:param name = "itemName" value = "${itemName}"/>
					<c:param name = "qty" value = "${quantity}"/>
					<c:param name = "days" value = "${days}"/>	
			</c:url>
			
			<tr>
					<td> ${pro_new.referenceNo} </td>
					
					<td> ${pro_new.description} </td>
					
					<td> ${pro_new.quantity} </td>
					
					<td> ${pro_new.date} </td>
					
					<td>
						<a href = "${procUpdate}">
							<input type = "button" name = "updateproc" value = "Update Data">
						</a>
					</td>
					
					<td>
						<a href = "${ProcureDelete}">
							<input type = "button" name = "delete" value = "Remove Procurement">
						</a>
					</td>
					
			</tr>
			
			
			</c:forEach>
		</table>
	</div>
	
</body>
</html>