<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
<title>New/Edit Contact</title>
</head>
<body>

	<div align="center">
		<h1>New/Edit Contact</h1>
		<form:form action="saveContact" method="post" modelAttribute="contact">
			<table>


				<form:hidden path="id" />

				<tr>
					<td>Name:</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>kolor:</td>
					<td><form:input path="kolor" /></td>
				</tr>
				<tr>
					<td>date:</td>
					<td><form:input path="date" /></td>
				</tr>
				<tr>
					<td>manufacturer:</td>
					<td><form:input path="manufacturer" /></td>
				<tr>
					<td>cena:</td>
					<td><form:input path="price" /></td>
				</tr>

                 <tr>
					<td colspan="2" align="center"><input type="submit"
						value="Save"></td>
				</tr>

			</table>
		</form:form>
		
		<a href="/glider3/singleUpload">dodaj/zmień zdjecie</a>
	</div>


</body>
</html>