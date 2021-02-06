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
<title>home</title>
<head>


</head>

<body>      
	<div class="container">
	<nav class="navbar navbar-expand-sm  navbar-light">
		<!-- Brand/logo -->
		
		<a class="navbar-brand" href="/glider3/welcome2"> <img
			src="resources/images2/paralotka5.jpg" alt="logo" style="width: 40px; ">
		</a>
		<b>Paralotka <br><small>Strona o tematyce paralotniowej</small></b> 

		<!-- Links -->
		<ul class="navbar-nav ">
		
			<li class="nav-item "><a class="nav-link" href="LP">paralotnie</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#">uprzęże</a></li>
			<li class="nav-item"><a class="nav-link" href="#">elektronika</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/glider3/wykres">wykresy</a>
			</li>
			<li class="nav-item"><a class="nav-link"
				href="pictures">zdjęcia</a></li>

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
				class="nav-link dropdown-toggle" href="#" id="navbardrop2"
				data-toggle="dropdown"> login </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="admin">Administrator</a> 
					<a class="dropdown-item" href="user">Użytkownik</a>
					<a class="dropdown-item" href="db">DBA</a> 
				</div></li>
			
			<li class="nav-item"><a class="nav-link" href="/glider3/logout">Logout</a>
		</ul>
    
	</nav>
  <img class="img-responsive, rounded"   src="resources/images2/chorw66.gif"  alt="Chania" width="1100" height="500"> 
</div>
	
</body>

</html>