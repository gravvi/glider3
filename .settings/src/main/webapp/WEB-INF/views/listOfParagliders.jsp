<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css2/style3.css">

<title>lista paralotni</title>
</head>
<body>
        <div class="container">
        <nav class="navbar navbar-expand-sm  navbar-light">
		<!-- Brand/logo -->
		
		<a class="navbar-brand" href="/glider3/welcome2"> <img
			src="resources/images2/paralotka5.jpg" alt="logo" style="width: 40px; ">
		</a>
		<b>Paralotka <br><small>Strona o tematyce <br> paralotniowej</small></b> 
       
       
		<!-- Links -->
		<ul class="navbar-nav " >
		
			<li class="nav-item "><a   class="nav-link" href="/glider3">home</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#">uprzęże</a></li>
			<li class="nav-item"><a class="nav-link" href="#">elektronika</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/glider3">akcesoria</a>
			</li>
			<li class="nav-item"><a class="nav-link"
				href="/glider3/pictures">zdjęcia</a></li>

			<!-- Dropdown meteo -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> pogoda </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="https://www.windy.com/">Windy</a> <a
						class="dropdown-item" href="http://www.xcmeteo.net/">Xcmeteo</a> <a
						class="dropdown-item" href="https://pl.sat24.com/pl">Sat24</a>
						<a class="dropdown-item" href="http://xcportal.pl/">Xcportal</a> 
					<a class="dropdown-item" href="http://www.pgforum.pl">Pgforum</a>

					<a class="dropdown-item" href="#">Link 4</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="#"></a></li>
			<li class="nav-item"><a class="nav-link" href="#"> </a>
			</li>
			
			<!-- Dropdown login -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> login </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="admin">Administrator</a> 
					<a class="dropdown-item" href="user">Użytkownik</a>
					<a class="dropdown-item" href="db">DBA</a> 
				</div></li>
			
			<li class="nav-item"><a class="nav-link" href="/glider3/logout">Logout</a>
		</ul>
    
	</nav>

			<h1>${opis}</h1>

		





	


	<table class="table">
		<thead class="thead-light">
			<tr>
				<th>Lp</th>
				<th>nazwa</th>
				<th>kolor</th>
				<th>data.pr</th>
				<th>producent</th>
				<th>cena</th>
				<th>foto</th>

			</tr>
		</thead>

		<c:forEach var="contact" items="${contact}" varStatus="status">
			<tr>
				<td>${status.index + 1}</td>
				<td>${contact.name}</td>
				<td>${contact.kolor}</td>
				<td>${contact.date}</td>
				<td>${contact.manufacturer}</td>
				<td>${contact.price}</td>
				<td><a href="/glider3/pictures">foto</a>
					&nbsp;&nbsp;&nbsp;&nbsp;</td>
			</tr>
		</c:forEach>

	</table>

	<div align="center">
		<footer>Cybiak@gmail.com</footer>
		</div>
		</div>
</body>
</html>
