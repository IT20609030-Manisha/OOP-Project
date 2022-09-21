<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/prescription.css" rel="stylesheet">
<link href="homeN.css" rel="stylesheet">

<body BACKGROUND ="images/back.jpg">


<div class="form">
						<div class="form-header">
						
					<h1 class="h3center">Submit Prescription</h1>
	
						</div>
				<br/>
				<form action="Thank.jsp" method="post" onChange="dis_able()">
					
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">	
								<span class="form-topic"><b>Name:</b></span>
							
									<input  type="text" name="Name" class="form-control" required>
							</div>
						</div>
							
					</div>
					
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">	
								<span class="form-topic"><b>Contact Number:</b></span>
							
									<input  type="number" name="CoNum" class="form-control"  pattern="[0-9] {10}"required>
							</div>
						</div>
							
					</div>			
						
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
					
								<span class="form-topic"><b>Address:</b></span>
							
									<input  type="text" name="Address" class="form-control"  required>
							</div>			
						</div>
					</div>
					
					<span class="form-topic"><b>Upload Prescription..</b></span>
							
						<input  type="file" name="ItemI" class="form-control" required><br/><br/>
					
					<center><button type="submit" name="submit" id="subbtn" class="submit-btn"><b>SUBMIT</b></button></center><br/><br/>
			
														
							
		</form><br/><br/><br/>
		
					</div>
				</div>
			</div>
		</div>
</body>
</html>