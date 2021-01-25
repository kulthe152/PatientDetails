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
	
	 <a href="${contextRoot}/PatientForm" class="btn btn-danger btn-sm"><h2>Add Patient</h2></a>
	<a href="${contextRoot}/DoctorForm" class="btn btn-danger btn-sm"><h2>Add Doctor</h2></a>
			
</body>
</html>