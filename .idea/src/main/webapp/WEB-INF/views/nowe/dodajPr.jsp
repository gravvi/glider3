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
<title>dodajPr</title>



</head>
<body>




	<div class="container">

		<nav class="navbar navbar-expand-sm  navbar-light">
			<!-- Brand/logo -->
			<a class="navbar-brand" href="/glider3/welcome2"> <img
			src="resources/images2/paralotka5.jpg" alt="logo" style="width: 40px; ">
		</a>

			<!-- Links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/glider3/LP">paralotnie</a></li>
				<li class="nav-item"><a class="nav-link" href="#">uprzęże</a></li>
				<li class="nav-item"><a class="nav-link" href="#">elektronika</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">akcesoria</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">testy</a></li>

				<!-- Dropdown -->
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> pogoda </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="https://www.windy.com/">Windy</a> <a
							class="dropdown-item" href="http://www.xcmeteo.net/">Xcmeteo</a>
						<a class="dropdown-item" href="https://pl.sat24.com/pl">Sat24</a>


						<a class="dropdown-item" href="#">Link 2</a> <a
							class="dropdown-item" href="#">Link 3</a> <a
							class="dropdown-item" href="#">Link 4</a>
					</div></li>
				

				<li class="nav-item"><a style="float: right" class="nav-link" href="#"></a>
				<li><a href="/glider3/logout"
					<button   class="button button2">logout</button>></a></li>

			</ul>

		</nav>

		<div class="container-fluid">

			<h3>Strona administratora  <a style="float: right"
			
			
					href="/glider3/editAndRemove"><button   class="button button1"> edytuj produkt</button></a>
					 <a style="float: right"
					href="/glider3/newContact"><button   class="button button1"> dodaj produkt</button></a>
					
					</h3>
			          
			        
							<img class="img-rounded"  alt="kulka" src="resources/images2/kulka.jpg" 
				style="float: right; width:100%; height:5" >
		</div>
	</div>
</body>
</html>