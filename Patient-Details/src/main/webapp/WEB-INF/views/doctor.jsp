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
	
	<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<body>
<div class="container-fluid">
	<div class="row" style="margin-top:20px;">
		
		
		
		
					
					<div class="col-md-offset-2 col-md-8">
						<div class="panel panel-primary">
								<div class="panel-heading">
									<h2>Patient Crud</h2>
								</div>
								<div class="panel-body">
									<sf:form class="form-horizontal" modelAttribute="doctor" 
										action="${contextRoot}/add/docDetails" method="POST">
										<div class="form-group">
											<label class="control-label col-md-4" for="docName">Enter Doctor Name</label>
											<div class="col-md-8">
												<sf:input type="text" path="docName" id="docName" placeholder="doctor name" class="form-control" />							
												<em class="help-block">Please enter doctor name!</em>
											</div>	
										</div>
										
										<div class="form-group">
											<label class="control-label col-md-4" for="Specialization">Enter Specialization</label>
											<div class="col-md-8">
												<sf:input type="text" path="Specialization" id="Specialization" placeholder="Specialization" class="form-control" />							
												<em class="help-block">Please Specialization!</em>
											</div>	
										</div>
										
										<div class="form-group">
											<label class="control-label col-md-4 for="Avail_From">Avail_From</label>
											<div class="col-md-8">
												<sf:input type="date" path="Avail_From" value="Avail_From" style="font-size:16px;" id="Avail_From" class="form-control"/>
											</div>
										</div>
										
										<div class="form-group">
											<label class="control-label col-md-4 for="Avail_To">Avail_To</label>
											<div class="col-md-8">
												<sf:input type="date" path="Avail_To" value="Avail_To" style="font-size:16px;" id="Avail_To" class="form-control"/>
											</div>
										</div>
										
										<sf:hidden path="dno"/>
										
										
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

