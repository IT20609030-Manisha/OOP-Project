<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel = "stylesheet" href = "Supplier.css">
<title>BID</title>
<link rel = "stylesheet" href = "Supplier.css">
</head>
<body>
	
	<br><br>
	<div class = heading><h3> BID Details </h3></div>
	<br><br>
	<img src = "images/BidDetails.jpeg" align = "right" width = "800px" height = "400px">
		<div class = "forms">
			<table border = "1" column-width = "30px">
					<c:forEach var="bid_new" items="${BidDetails}">	
					
					<c:set var = "bidid" value = "${bid_new.bid_id}"/>
					<c:set var = "ref" value = "${bid_new.pro_id}"/>
					<c:set var = "suppid" value = "${bid_new.supp_id}"/>
					<c:set var = "uprice" value = "${bid_new.unitprice}"/>
					<c:set var = "qty" value = "${bid_new.quantity}"/>	
					
					<c:url value = "BIDUpdate.jsp" var = "BIDUpdate">
						<c:param name = "bidid" value = "${bidid}"/>
						<c:param name = "ref" value = "${ref}"/>
						<c:param name = "suppid" value = "${suppid}"/>
						<c:param name = "uprice" value = "${uprice}"/>
						<c:param name = "qty" value = "${qty}"/>
					</c:url>
					
					<c:url value = "BIDDelete.jsp" var = "BIDDelete">
						<c:param name = "bidid" value = "${bidid}"/>
						<c:param name = "ref" value = "${ref}"/>
						<c:param name = "suppid" value = "${suppid}"/>
						<c:param name = "uprice" value = "${uprice}"/>
						<c:param name = "qty" value = "${qty}"/>
					</c:url>
								
						<tr>
							<td>BID ID</td>
							<td>${bid_new.bid_id}</td><br><br>
						</tr>
						
						<tr>
							<td>Procurement Reference No.</td>
							<td>${bid_new.pro_id}</td>
						</tr>
						
						<tr>
							<td>Supplier ID</td>
							<td>${bid_new.supp_id}</td>
						</tr>
						
						<tr>
							<td>Unit price</td>
							<td>${bid_new.unitprice}</td>
						</tr>
						
						<tr>
							<td>Quantity</td>
							<td>${bid_new.quantity}</td>
						</tr>
						
					</c:forEach>
				</table>
				
				<br><br>
				
				<a href = "${BIDUpdate}">
						<input type = "button" name = "updatebid" value = "Update Data">
				</a>
				
				&nbsp  
				<a href = "${BIDDelete}">
						<input type = "button" name = "delete" value = "Remove from BID">
				</a>	
				
		</div>	
</body>
</html>