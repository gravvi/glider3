<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css2/style3.css">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Dodawanie pliku</title>
	<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet" type="text/css"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet" type="text/css"></link>
</head>
<body> 

	<div class="form-container">
		<h1>Dodawanie pliku </h1>
		<form:form method="POST" modelAttribute="fileBucket" enctype="multipart/form-data" class="form-horizontal">
		
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="file">załaduj plik</label>
					<div class="col-md-7">
						<form:input type="file" path="file" id="file" class="form-control input-sm"/>
						<div class="has-error">
							<form:errors path="file" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-actions floatRight">
					<input type="submit" value="Upload" class="btn btn-primary btn-sm">
				</div>
			</div>
		</form:form>
		<a href="/glider3" class="btn btn-secondary">Home</a>
	</div>
</body>
</html>
