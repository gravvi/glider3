<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css2/style.css">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>home</title>
</head>
<body>

	<div class="flex-container">
		<header>
			<h1>${powitanie}</h1>
			<p>${opis}</p>
			<img src="<c:url value="/resources/images2/kulka.jpg"></c:url>"
				class="img-rounded" alt="kulka" width="1000" height="5" /> 
				<img src="<c:url value="/resources/images2/sniezka-14.jpg"></c:url>"
				class="img-rounded" alt="mc" width="1000" height="250" /> 
				<img src="<c:url value="/resources/images2/kulka.jpg"></c:url>"
				class="img-rounded" alt="kulka" width="1000" height="8" />

			<h4>${slogan}</h4>
		</header>

		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header"></div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="/glider3/LP">Paralotnie</a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="#">Uprzęże</a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="#">elektronika</a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="#">testy</a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="/glider3/pictures">zdjęcia </a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="/glider3/editAndRemove">edytuj
							/ usuń </a></li>
					<li><a href=" "> </a></li>
					<li class="collapse,active" id="demo" ><a href="#">Dodaj produkt </a></li>
					<li><a></a></li>
				</ul>
  <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo">Simple collapsible</button>
  <div id="demo" class="collapse">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    
  </div>

			</div>
			<div class="relative">
				<a href="/glider3/welcome2" class="btn btn-warning navbar-btn">Logowanie</a>
				<a href="<c:url value="/logout" />">Logout</a>
			</div>

		</nav>

		<article class="article">
			<h1>${oferta}</h1>
			<p>${opis}</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
			<p>
				<strong>Etiam sit amet lectus quis est congue mollis!</strong>
			</p>
		</article>



		<footer>3ybiak@gmail.com</footer>
	</div>

</body>
</html>
