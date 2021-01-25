<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<spring:url var="css" value="/resources/css"/>
<spring:url var="js" value="/resources/js"/>
<spring:url var="PatientReport" value="/resources/images"/>

 <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="TE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
<%-- 
        <!-- Bootstrap core CSS -->
        <link href="${css}/bootstrap.css" rel="stylesheet">
		 <!-- Bootstrap theme CSS -->
        <link href="${css}/bootstrap.journal.min.css" rel="stylesheet">
		<link href="${css}/dataTables.bootstrap.css" rel="stylesheet"> 
		<link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
		
		 <!-- JavaScript -->
       <script src="${js}/jquery-1.10.2.js"></script>
        <script src="${js}/jquery.validate.js"></script>
        <script src="${js}/bootstrap.min.js"></script>  --%>
        <script src="${js}/myjs.js"></script>
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	 <script src="${js}/myjs.js"></script>
	</head>
	<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
	<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<body>
<div class="container-fluid">
	<div class="row" style="margin-top:20px;">
		
		
		<%-- <c:if test="${not empty message}">
			<div class="col-xs-12">
				<div class="alert alert-success alert-dismissible">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					${message}
				</div>
			</div>
		</c:if> --%>
		
		<c:if test="${not empty message}">
		 	<div class="col-xs-12">
		 		<div class = "alert alert-success alert-dismissible">
		 			<h2 class="alert-heading"><button type="button" class="close" data-dismiss="alert">&times;</button>
		 			${message}</h2>
		 		</div>
		 	</div>
	 	</c:if>
		
					
					<div class="col-md-offset-2 col-md-8">
						<div class="panel panel-primary">
								<div class="panel-heading">
									<h2>Patient Crud</h2>
								</div>
								<div class="panel-body">
									<sf:form class="form-horizontal" modelAttribute="patient" 
										action="${contextRoot}/add/patientDetails" method="POST" enctype="multipart/form-data">
										<div class="form-group">
											<label class="control-label col-md-4" for="pname">Enter Patient Name</label>
											<div class="col-md-8">
												<sf:input type="text" path="pname" id="pname" placeholder="Patient name" class="form-control" />							
												<em class="help-block">Please enter patient name!</em>
											</div>	
										</div>
										
										<div class="form-group">
											<label class="control-label col-md-4 for="pDOB">pDOB</label>
											<div class="col-md-8">
												<sf:input type="date" path="pDOB" value="pDOB" style="font-size:16px;" id="pDOB" class="form-control"/>
											</div>
										</div>
										
										<div class="form-group">
											<label class="control-label col-md-4" for="pBloodGroup">Enter Patient pBloodGroup</label>
											<div class="col-md-8">
												<sf:input type="text" path="pBloodGroup" id="pBloodGroup" placeholder="Patient pBloodGroup" class="form-control" />							
												<em class="help-block">Please enter patient pBloodGroup!</em>
											</div>	
										</div>
										
										<div class="form-group">
											<label class="control-label col-md-4" for="pBloodGroup">Enter Patient pAddress</label>
											<div class="col-md-8">
												<sf:textarea path="pAddress" style="font-size:16px;" id="pAddress" rows="4" placeholder="Write a address" class="form-controll"></sf:textarea>						
												<em class="help-block">Please enter patient pAddress!</em>
											</div>	
										</div>
										<div class="form-group">
											<label class="control-label col-md-4" for="pMobile">Enter Patient pMobile</label>
											<div class="col-md-8">
												<sf:input type="text" path="pMobile" id="pMobile" placeholder="Patient pMobile" class="form-control" />							
												<em class="help-block">Please enter patient pMobile!</em>
											</div>	
										</div>
										<div class="form-group">
											<label class="control-label col-md-4" for="pEmail">Enter Patient pEmail</label>
											<div class="col-md-8">
												<sf:input type="text" path="pEmail" id="pEmail" placeholder="Patient pEmail" class="form-control" />							
												<em class="help-block">Please enter patient pEmail!</em>
											</div>	
										</div>
										<div class="form-group">
											<label class="control-label col-md-4 for="Appointment_Date">Appointment Date</label>
											<div class="col-md-8">
												<sf:input type="date" path="Appointment_Date" value="" style="font-size:16px;" id="Appointment_Date" class="form-control"/>
											</div>
										</div>
										
										<div class="form-group">
											<label class="control-label col-md-4" for="file">Select Patient Report</label>
											<div class="col-md-8">
												<sf:input type="file" path="file" id="file" class="form-control" />							
											</div>	
										</div>
										
										<sf:hidden path="pid"/>
										
										
										<div class="form-group">
											<div class="col-md-offset-4 col-md-8">
												<input type="submit" path="submit" value="Submit" style="font-size:16px;" class="btn btn-primary"/>
											</div>
										</div>
										
									</sf:form>
								</div>
						</div>	
					</div>
					
				
					
					
	</div>
</div>
</body>

</html>

