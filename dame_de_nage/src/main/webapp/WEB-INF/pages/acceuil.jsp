<%@ page language="java" contentType="text/html; charset=ISO-8859-15"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- ajout taglib form de spring mvc -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>

<title>La Dame de Nage - Page d'accueil</title>
<link rel="icon" type="immage/png"
	href="<c:url value="/resources/images/logo.PNG"/>" />
<script src="<c:url value="/resources/js/jquery-3.3.1.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
<script src="<c:url value="/resources/js/javascript.js"/>"></script>
<!-- ajout de la lib de boostrap css -->
<link rel="stylesheet"
	href='<c:url value="/resources/css/bootstrap.css"/>' />
<style type="text/css">
	.carousel-control {
	  background-image: none !important;
	}
</style>
</head>
<body style="background-color: #c6a664">

	<%@ include file="templates/header.html"%>
	<div style="width: 100%; height: 50px;"></div>
	<div class="col-sm-12">
		<div class="container">
			<div class="col-sm-7">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" style = "height:530px">

						<div class="item active">
							<img style="width: 100%; height: 452px; border-radius:10px"
								src="${pageContext.request.contextPath}/resources/images/bar.jpg" />
						</div>

						<div class="item">

							<img style="width: 100%; height: 452px; border-radius:10px"
								src="${pageContext.request.contextPath}/resources/images/terrasse-bien-agreable.jpg" />
						</div>

						<div class="item">

							<img style="width: 100%; height: 452px; border-radius:10px"
								src="${pageContext.request.contextPath}/resources/images/burger1.jpg" />
						</div>

					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<div class="col-sm-5" style="max-height: 500px; min-height: 400px">
				<div style="background-color: RGB(200,16,30); text-align: center;border-style:inset;border-color:black; border-top-left-radius: 10px;border-top-right-radius: 10px; border-bottom: none">
					<h2 style="; vertical-align: middle">Qu'est-ce qu'une Dame de Nage?</h2>
					<br/>
				</div>
				<div style="background-color: white;border-style:inset;border-color:black;  border-bottom-left-radius: 10px;border-bottom-right-radius: 10px; border-top: none; padding-bottom:10px">
					<p  style="font-size: 1px"><br/></p>
					<h4 style=" margin: 15px; margin-bottom: 15px">Sur une embarcation à rames, la dame de nage est un objet
						servant à fixer une rame. Durant le mouvement du rameur, elle joue
						le rôle de pivot et transfère à l'embarcation la réaction créée
						par le coup de rame. Les dames de nage sont généralement en forme de
						U fermé à leur extrémité supérieure par une barrette mobile.</h4>

					<img style="width: 42%; position: relative; left: 10px"
						src="${pageContext.request.contextPath}/resources/images/Dame_de_nage.jpg">
					<img style="width: 53%; position: relative; left: 10px"
						src="${pageContext.request.contextPath}/resources/images/ddm2.jpg">

					<br />
				</div>
			</div>
		</div>
	</div>
	
	
	
	<%@ include file="templates/footer.html"%>
</body>
</html>