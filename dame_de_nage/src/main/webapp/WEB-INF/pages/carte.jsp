<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- ajout taglib form de spring mvc -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Dame de Nage : La Carte</title>
<link rel="icon" href="<c:url value="/resources/images/logo.PNG"/>" />

<script src='<c:url value="/resources/js/jquery-3.3.1.js"/>'></script>
<script type="text/javascript"
	src='<c:url value="/resources/js/bootstrap.js"/>'></script>
<script type="text/javascript"
	src='<c:url value="/resources/js/javascript.js"/>'></script>
<!-- ajout de la lib de boostrap css -->
<link rel="stylesheet"
	href='<c:url value="/resources/css/bootstrap.css"/>' />

</head>
<link rel="stylesheet" href='<c:url value="/resources/css/styles.css"/>' />

<body style="background-color: #c6a664">

	<%@ include file="templates/header.html"%>

	<div style="width: 400px; height: 50px;"></div>
	<div class="container">
		<div class="col-md-3"></div>
		<div class="col-md-6"
			style="padding: 24px; background-color: #e5e5e5; height: auto; font-family: Brush Script MT">
			<div class="col-sm-12"
				style="padding: 12px; border-style: inset; border-width: 6px; border-color: black;">
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-bottom: none">
					<br />
					<h1 style="text-align: center;">Les tapas</h1>
					<h1 style="text-align: center">
						<img style="width: 15%"
							src="${pageContext.request.contextPath}/resources/images/underline.png">
					</h1>
					<div class=></div>
					<div class="row">
						<div class="table table-responsive">
							<table class="table table-sm">
								<thead class="tablehead">
								</thead>

								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%;">
									<c:forEach var="p" items="${listeTapas}">

										<tr>
											<td style="text-align: center; width: 65%">${p.nom}</td>
											<td style="text-align: left; font-size: 75%">${p.prixm}0</td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-bottom: none; border-top: none">
					<br />
					<h1 style="text-align: center">Les Planchas</h1>
					<h1 style="text-align: center">
						<img style="width: 15%"
							src="${pageContext.request.contextPath}/resources/images/underline.png">
					</h1>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5">
								<tr>
									<td style="text-align: center; width: 65%"></td>
									<td style="text-align: center; font-size: 140%">Petite</td>
									<td style="text-align: center; font-size: 140%">Grande</td>
								</tr>
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="p" items="${listePlancha}">

										<tr>
											<td style="text-align: center; width: 65%">${p.nom}</td>
											<td style="text-align: center; font-size: 75%">${p.prixp}0</td>
											<td style="text-align: center; font-size: 75%">${p.prixg}0</td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-bottom: none; border-top: none">
					<br />
					<h1 style="text-align: center">Les Salades</h1>
					<h1 style="text-align: center">
						<img style="width: 15%"
							src="${pageContext.request.contextPath}/resources/images/underline.png">
					</h1>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5">
								<tr>
									<td style="text-align: center; width: 43%"></td>
									<td style="text-align: center; font-size: 140%">Petite</td>
									<td style="text-align: center; font-size: 140%">Grande</td>
								</tr>
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="p" items="${listeSalade}">

										<tr>
											<td style="text-align: center; width: 65%">${p.nom}</td>
											<td style="text-align: center;font-size: 75%">${p.prixp}0</td>
											<td style="text-align: center; font-size: 75%">${p.prixg}0</td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-bottom: none; border-top: none">
					<br />
					<h1 style="text-align: center">Les Huitres de Painpol</h1>
					<h1 style="text-align: center">
						<img style="width: 15%"
							src="${pageContext.request.contextPath}/resources/images/underline.png">
					</h1>
					<div class="row">
						<div class="table table-responsive">
							<table class="table">
								<thead class="tablehead">

								</thead>

								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="p" items="${listeHuitre}">

										<tr>
											<td style="text-align: center; width: 65%">${p.nom}</td>
											<td style="text-align: left; font-size: 75%">${p.prixm}0</td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-bottom: none; border-top: none">
					<br />
					<h1 style="text-align: center">Les Plats</h1>
					<h1 style="text-align: center">
						<img style="width: 15%"
							src="${pageContext.request.contextPath}/resources/images/underline.png">
					</h1>
					<div class="row">
						<div class="table table-responsive">
							<table class="table">
								<thead class="tablehead">

								</thead>

								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="p" items="${listePlats}">

										<tr>
											<td style="text-align: center; width: 65%">${p.nom}</td>
											<td style="text-align: left; font-size: 75%">${p.prixm}0</td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-bottom: none; border-top: none">
					<br />
					<h1 style="text-align: center">Les Moules-Frites</h1>
					<h1 style="text-align: center">
						<img style="width: 15%"
							src="${pageContext.request.contextPath}/resources/images/underline.png">
					</h1>
					<div class="row">
						<div class="table table-responsive">
							<table class="table">
								<thead class="tablehead">

								</thead>

								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="p" items="${listeMoule}">

										<tr>
											<td style="text-align: center; width: 65%">${p.nom}</td>
											<td style="text-align: left; font-size: 75%">${p.prixm}0</td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-bottom: none; border-top: none">
					<br />
					<h1 style="text-align: center">Les Hamburgers Maison</h1>
					<h1 style="text-align: center">
						<img style="width: 15%"
							src="${pageContext.request.contextPath}/resources/images/underline.png">
					</h1>
					<div class="row">
						<div class="table table-responsive">
							<table class="table">
								<thead class="tablehead">

								</thead>

								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="p" items="${listeBurger}">

										<tr>
											<td style="text-align: center; width: 65%">${p.nom}</td>
											<td style="text-align: left; font-size: 75%">${p.prixm}0</td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-bottom: none; border-top: none">
					<br />
					<h1 style="text-align: center">Menu enfants</h1>
					<h1 style="text-align: center">
						<img style="width: 15%"
							src="${pageContext.request.contextPath}/resources/images/underline.png">
					</h1>
					<div class="row">
						<div class="table table-responsive">
							<table class="table">
								<thead class="tablehead">

								</thead>

								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">

									<c:forEach var="p" items="${listeME}">

										<tr>
											<td style="text-align: center; width: 65%;">${p.nom}</td>
											<td style="text-align: left; font-size: 75%"><br>${p.prixm}0</td>
										</tr>

									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-top: none; border-bottom: none">
					<br />
					<h1 style="text-align: center">Les desserts</h1>
					<h1 style="text-align: center">
						<img style="width: 15%"
							src="${pageContext.request.contextPath}/resources/images/underline.png">
					</h1>
					<div class="row">
						<div class="table table-responsive">
							<table class="table">
								<thead class="tablehead">

								</thead>

								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="p" items="${listeDessert}">

										<tr>
											<td style="text-align: center; width: 65%;">${p.nom}</td>
											<td style="text-align: left; font-size: 75%">${p.prixm}0</td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-top: none; border-bottom: none">
					<br />
					<h1 style="text-align: center">Les Glaces</h1>
					<h1 style="text-align: center">
						<img style="width: 15%"
							src="${pageContext.request.contextPath}/resources/images/underline.png">
					</h1>
					<h1 style="text-align: center">Les Coupe sans alcool</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table">
								<thead class="tablehead">

								</thead>

								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="p" items="${listeCoupeSA}">

										<tr>
											<td style="text-align: center; width: 65%">${p.nom}</td>
											<td style="text-align: left; font-size: 75%">${p.prixm}0</td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-bottom: none; border-top: none">
					<br />
					<h1 style="text-align: center">Les Coupe avec alcool</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">
								
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="p" items="${listeCoupeAA}">

										<tr>
											<td style="text-align: center; width: 65%">${p.nom} </td>
											<td style="text-align: left; font-size: 75%">${p.prixm} </td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-top: none">
					<br />
					<h1 style="text-align: center">Composer votre coupe</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">
							<tbody>
								<tr>
									<td style="text-align: center; font-size: 140%">1 boule</td>
									<td style="text-align: center; font-size: 140%">2 boules</td>
									<td style="text-align: center; font-size: 140%">3 boules</td>
									<td style="text-align: center; font-size: 140%">Supplément chantily</td>
								</tr>
								
								<tr>
								<c:forEach var="p" items="${listePrixGlace}">
									<td style="text-align: center; font-size: 140%">${p.prixp}</td>
									<td style="text-align: center; font-size: 140%">${p.prixm}</td>
									<td style="text-align: center; font-size: 140%">${p.prixg}</td>
								</c:forEach>
									<td style="text-align: center; font-size: 140%">1.00</td>
								</tr>
								</tbody>
							</table>
						</div>
					</div>
								<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="p" items="${listeGlace}">

										<tr>
										<td></td>
											<td style="text-align: center">${p.nom} </td>
											<td></td>
											<td></td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
				<div class="col-sm-12"
					style="margin-top: 12px; border-style: inset; border-color: black; border-bottom: none">
					<br />
					<h1 style="text-align: center; font-size: 300%">Les Vins</h1>
					<h1 style="text-align: center">
						<img style="width: 20%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h1>
					<h1 style="text-align: center">Les Rouges</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5">
								<tr>
									<td style="text-align: center; width: 43%"></td>
									<td style="text-align: center; font-size: 140%">Verre</td>
									<td style="text-align: center; font-size: 140%">25cl</td>
									<td style="text-align: center; font-size: 140%">50cl</td>
									<td style="text-align: center; font-size: 140%">Bouteille</td>
								</tr>
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="v" items="${listeVinsRouge}">
										<tr>
											<td style="text-align: center; width: 43%">${v.appelation}</td>
											
												<td style="text-align: center; font-size: 75%">${v.prixv} </td>
												<td style="text-align: center; font-size: 75%">${v.prix25} </td>
												<td style="text-align: center; font-size: 75%">${v.prix50} </td>
												<td style="text-align: center; font-size: 75%">${v.prixb} </td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-bottom: none; border-top: none">
					<br />
					<h1 style="text-align: center">Les Blancs</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">
								<tr>
									<td style="text-align: center; width: 43%"></td>
									<td style="text-align: center; font-size: 140%">Verre</td>
									<td style="text-align: center; font-size: 140%">25cl</td>
									<td style="text-align: center; font-size: 140%">50cl</td>
									<td style="text-align: center; font-size: 140%">Bouteille</td>
								</tr>
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="v" items="${listeVinsBlanc}">

										<tr>
											<td style="text-align: center; width: 43%">${v.appelation} </td>
											<td style="text-align: center; font-size: 75%">${v.prixv} </td>
											<td style="text-align: center; font-size: 75%">${v.prix25} </td>
											<td style="text-align: center; font-size: 75%">${v.prix50} </td>
											<td style="text-align: center; font-size: 75%">${v.prixb} </td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-top: none">
					<br />
					<h1 style="text-align: center">Les Rosés</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">
								<tr>
									<td style="text-align: center; width: 43%"></td>
									<td style="text-align: center; font-size: 140%">Verre</td>
									<td style="text-align: center; font-size: 140%">25cl</td>
									<td style="text-align: center; font-size: 140%">50cl</td>
									<td style="text-align: center; font-size: 140%">Bouteille</td>
								</tr>
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="v" items="${listeVinsRose}">

										<tr>
											<td style="text-align: center; width: 43%">${v.appelation} </td>
											<td style="text-align: center; font-size: 75%">${v.prixv} </td>
											<td style="text-align: center; font-size: 75%">${v.prix25} </td>
											<td style="text-align: center; font-size: 75%">${v.prix50} </td>
											<td style="text-align: center; font-size: 75%">${v.prixb} </td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>

	<div style="width: 400px; height: 50px;"></div>
	<%@ include file="templates/footer.html"%>

</body>

</html>