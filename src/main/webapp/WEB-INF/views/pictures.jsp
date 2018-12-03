<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Zdjęcia</title>

<style>
/* Make the image fully responsive */
/*   .carousel-inner img {
      width: 100%;
      height: 100%;
  } */
</style>
</head>
<body>
	<a href="/glider3/singleUpload" class="btn btn-secondary">dodaj zdjęcie</a>
	<a href="/glider3" class="btn btn-secondary">Home</a>

	<div align="center">

		<div id="demo" class="carousel slide" data-ride="carousel">


			<!-- <ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1" class="active"></li>
				<li data-target="#demo" data-slide-to="2"></li>
				<li data-target="#demo" data-slide-to="3"></li>
			</ul> -->

			<!-- The slideshow -->
			<div class="carousel-inner">
			<div class="carousel-item active">
					<img src=${picture } class="rounded" alt="sasopiata"
						width="1000" height="500">
				</div>
				<div class="carousel-item ">
					<img src="resources/addedImages/2.jpg" class="rounded-circle"
						alt="2.jpg" width="900" height="400">
				</div>
				<div class="carousel-item">
					<img src="resources/addedImages/3.jpg" class="rounded-circle"
						alt="3.jpg" width="900" height="400">
				</div>
				<div class="carousel-item">
					<img src="resources/addedImages/6.jpg" class="rounded-circle"
						alt="6.jpg" width="900" height="400">
				</div>
				
			</div>

			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>
</body>
</html>