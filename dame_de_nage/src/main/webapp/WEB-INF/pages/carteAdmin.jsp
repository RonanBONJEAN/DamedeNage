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

	<%@ include file="templates/menuAdmin.html"%>

	<div style="width: 400px; height: 50px;"></div>
	<div class="container">

		<div class="col-md-6"
			style="padding: 24px; background-color: #e5e5e5; height: auto; font-family: Brush Script MT">
			<div class="col-sm-12"
				style="padding: 12px; border-style: inset; border-width: 6px; border-color: black;">
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-bottom: none">
					<br />
					<h1 style="text-align: center; font-size: 300%">La Carte</h1>
					<h1 style="text-align: center">
						<img style="width: 20%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h1>
					<h1 style="text-align: center;">
						Les tapas <a style="color: black" data-toggle="modal"
							href="#ModalAjoutPlats"><img style="width: 5%"
							src="${pageContext.request.contextPath}/resources/images/plus.png"></a>
					</h1>
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
											<td style="text-align: center; width: 65%"><a
												style="color: black" data-toggle="modal" href="#ModalTapas"
												data-target="#ModalPlats" onclick="setIdPlats(${p.id})"><input
													id="nomPlats${p.id}" value="${p.nom}" type="hidden"><input
													id="catPlats${p.id}" value="${p.categorie}" type="hidden">${p.nom}</a></td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prixPlats${p.id}" value="${p.prixm}" type="hidden">${p.prixm}0€<a
												href="${pageContext.request.contextPath}/admin/submitDeleteP/${p.id}"><img
													style="width: 15%"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">
						Les Planchas <a style="color: black" data-toggle="modal"
							href="#ModalAjoutPlanchas"><img style="width: 5%"
							src="${pageContext.request.contextPath}/resources/images/plus.png"></a>
					</h1>
					<h1 style="text-align: center">
						<img style="width: 15%"
							src="${pageContext.request.contextPath}/resources/images/underline.png">
					</h1>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5">
								<tr>
									<td class="col-sm-6" style="text-align: center; width: 30%"></td>
									<td class="col-sm-2"
										style="text-align: center; font-size: 140%">Petite</td>
									<td class="col-sm-3"
										style="text-align: center; font-size: 140%">Grande</td>
									<td class="col-sm-1">&nbsp;</td>
								</tr>
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="p" items="${listePlancha}">

										<tr>
											<td class="col-sm-2" style="text-align: center; width: 30%"><a
												style="color: black" data-toggle="modal"
												href="#ModalPlanchas" onclick="setIdPlanchas(${p.id})"><input
													id="nomPlanchas${p.id}" value="${p.nom}" type="hidden"><input
													id="prixPlanchasP${p.id}" value="${p.prixp}" type="hidden"><input
													id="prixPlanchasG${p.id}" value="${p.prixg}" type="hidden">${p.nom}</a></td>
											<td class="col-sm-2"
												style="text-align: center; width: 30%; font-size: 75%"><input
												id="prixPPlanchas${p.id}" value="${p.prixp}" type="hidden">${p.prixp}0€</td>
											<td class="col-sm-3"
												style="text-align: center; width: 40%; font-size: 75%"><input
												id="prixGPlanchas${p.id}" value="${p.prixg}" type="hidden">${p.prixg}0€</td>
											<td class="col-sm-1" style="text-align: center;"><a
												href="${pageContext.request.contextPath}/admin/submitDeleteP/${p.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">
						Les Salades <a style="color: black" data-toggle="modal"
							href="#ModalAjoutSalades"><img style="width: 5%"
							src="${pageContext.request.contextPath}/resources/images/plus.png"></a>
					</h1>
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
									<td class="col-sm-1">&nbsp;</td>
								</tr>
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="p" items="${listeSalade}">

										<tr>
											<td style="text-align: center; width: 65%"><a
												style="color: black" data-toggle="modal"
												href="#ModalSalades" onclick="setIdSalades(${p.id})"><input
													id="nomSalades${p.id}" value="${p.nom}" type="hidden">${p.nom}</a></td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prixPSalades${p.id}" value="${p.prixp}" type="hidden">${p.prixp}0€</td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prixGSalades${p.id}" value="${p.prixg}" type="hidden">${p.prixg}0€</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteP/${p.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">
						Les Huitres de Paimpol <a style="color: black" data-toggle="modal"
							href="#ModalAjoutPlats"><img style="width: 5%"
							src="${pageContext.request.contextPath}/resources/images/plus.png"></a>
					</h1>
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
											<td style="text-align: center; width: 65%"><a
												style="color: black" data-toggle="modal" href="#ModalPlats"
												onclick="setIdPlats(${p.id})"><input
													id="nomPlats${p.id}" value="${p.nom}" type="hidden"><input
													id="catPlats${p.id}" value="${p.categorie}" type="hidden">${p.nom}</a></td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prixPlats${p.id}" value="${p.prixm}" type="hidden">${p.prixm}0€<a
												href="${pageContext.request.contextPath}/admin/submitDeleteP/${p.id}"><img
													style="width: 15%"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">
						Les Plats <a style="color: black" data-toggle="modal"
							href="#ModalAjoutPlats"><img style="width: 5%"
							src="${pageContext.request.contextPath}/resources/images/plus.png"></a>
					</h1>
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
											<td style="text-align: center; width: 65%"><a
												style="color: black" data-toggle="modal" href="#ModalPlats"
												onclick="setIdPlats(${p.id})"><input
													id="nomPlats${p.id}" value="${p.nom}" type="hidden"><input
													id="catPlats${p.id}" value="${p.categorie}" type="hidden">${p.nom}</a></td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prixPlats${p.id}" value="${p.prixm}" type="hidden">${p.prixm}0€<a
												href="${pageContext.request.contextPath}/admin/submitDeleteP/${p.id}"><img
													style="width: 15%"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">
						Les Moules-frites <a style="color: black" data-toggle="modal"
							href="#ModalAjoutPlats"><img style="width: 5%"
							src="${pageContext.request.contextPath}/resources/images/plus.png"></a>
					</h1>
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
											<td style="text-align: center; width: 65%"><a
												style="color: black" data-toggle="modal" href="#ModalPlats"
												onclick="setIdPlats(${p.id})"><input
													id="nomPlats${p.id}" value="${p.nom}" type="hidden"><input
													id="catPlats${p.id}" value="${p.categorie}" type="hidden">${p.nom}</a></td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prixPlats${p.id}" value="${p.prixm}" type="hidden">${p.prixm}0€<a
												href="${pageContext.request.contextPath}/admin/submitDeleteP/${p.id}"><img
													style="width: 15%"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">
						Les Hamburger maison <a style="color: black" data-toggle="modal"
							href="#ModalAjoutPlats"><img style="width: 5%"
							src="${pageContext.request.contextPath}/resources/images/plus.png"></a>
					</h1>
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
											<td style="text-align: center; width: 65%"><a
												style="color: black" data-toggle="modal" href="#ModalPlats"
												onclick="setIdPlats(${p.id})"><input
													id="nomPlats${p.id}" value="${p.nom}" type="hidden"><input
													id="catPlats${p.id}" value="${p.categorie}" type="hidden">${p.nom}</a></td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prixPlats${p.id}" value="${p.prixm}" type="hidden">${p.prixm}0€<a
												href="${pageContext.request.contextPath}/admin/submitDeleteP/${p.id}"><img
													style="width: 15%"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
											<td style="text-align: center; width: 65%;"><a
												style="color: black" data-toggle="modal" href="#ModalPlats"
												onclick="setIdPlats(${p.id})"><input
													id="nomPlats${p.id}" value="${p.nom}" type="hidden"><input
													id="catPlats${p.id}" value="${p.categorie}" type="hidden">${p.nom}</a></td>
											<td style="text-align: left; font-size: 75%"><input
												id="prixPlats${p.id}" value="${p.prixm}" type="hidden"><br>${p.prixm}0</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteP/${v.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">
						Les desserts <a style="color: black" data-toggle="modal"
							href="#ModalAjoutPlats"><img style="width: 5%"
							src="${pageContext.request.contextPath}/resources/images/plus.png"></a>
					</h1>
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
											<td style="text-align: center; width: 65%;"><a
												style="color: black" data-toggle="modal" href="#ModalPlats"
												onclick="setIdPlats(${p.id})"><input
													id="nomPlats${p.id}" value="${p.nom}" type="hidden"><input
													id="catPlats${p.id}" value="${p.categorie}" type="hidden">${p.nom}</a></td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prixPlats${p.id}" value="${p.prixm}" type="hidden">${p.prixm}0€<a
												href="${pageContext.request.contextPath}/admin/submitDeleteP/${p.id}"><img
													style="width: 15%"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">
						Les Coupe sans alcool<a style="color: black" data-toggle="modal"
							href="#ModalAjoutPlats"><img style="width: 5%"
							src="${pageContext.request.contextPath}/resources/images/plus.png"></a>
					</h1>
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
											<td style="text-align: center; width: 65%"><a
												style="color: black" data-toggle="modal" href="#ModalPlats"
												onclick="setIdPlats(${p.id})"><input
													id="nomPlats${p.id}" value="${p.nom}" type="hidden"><input
													id="catPlats${p.id}" value="${p.categorie}" type="hidden">${p.nom}</a></td>
											<td style="text-align: left; font-size: 75%"><input
												id="prixPlats${p.id}" value="${p.prixm}" type="hidden">${p.prixm}0<a
												href="${pageContext.request.contextPath}/admin/submitDeleteP/${p.id}"><img
													style="width: 15%"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">
						Les Coupe avec alcool<a style="color: black" data-toggle="modal"
							href="#ModalAjoutPlats"><img style="width: 5%"
							src="${pageContext.request.contextPath}/resources/images/plus.png"></a>
					</h1>
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
											<td style="text-align: center; width: 65%"><a
												style="color: black" data-toggle="modal" href="#ModalPlats"
												onclick="setIdPlats(${p.id})"><input
													id="nomPlats${p.id}" value="${p.nom}" type="hidden"><input
													id="catPlats${p.id}" value="${p.categorie}" type="hidden">${p.nom}</a></td>
											<td style="text-align: left; font-size: 75%"><input
												id="prixPlats${p.id}" value="${p.prixm}" type="hidden">${p.prixm}<a
												href="${pageContext.request.contextPath}/admin/submitDeleteP/${p.id}"><img
													style="width: 15%"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a>
											</td>
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
					<h1 style="text-align: center">
						Composer votre coupe<a style="color: black" data-toggle="modal"
							href="#ModalAjoutGlaces"><img style="width: 5%"
							src="${pageContext.request.contextPath}/resources/images/plus.png"></a>
					</h1>
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
										<td style="text-align: center; font-size: 140%">Supplément
											chantily</td>
									</tr>

									<tr>
										<c:forEach var="p" items="${listePrixGlace}">
											<td style="text-align: center; font-size: 140%"><a
												style="color: black" data-toggle="modal"
												href="#ModalPrixGlace" onclick="setIdPrixGlace(${p.id})"><input
													id="prixPGlaces${p.id}" value="${p.prixp}" type="hidden">${p.prixp}</a></td>
											<td style="text-align: center; font-size: 140%"><a
												style="color: black" data-toggle="modal"
												href="#ModalPrixGlace" onclick="setIdPrixGlace(${p.id})"><input
													id="prixMGlaces${p.id}" value="${p.prixm}" type="hidden">${p.prixm}</a></td>
											<td style="text-align: center; font-size: 140%"><a
												style="color: black" data-toggle="modal"
												href="#ModalPrixGlace" onclick="setIdPrixGlace(${p.id})"><input
													id="prixGGlaces${p.id}" value="${p.prixg}" type="hidden">${p.prixg}</a></td>
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
											<td style="text-align: center"><a style="color: black"
												data-toggle="modal" href="#ModalGlaces"
												onclick="setIdGlace(${p.id})"><input
													id="nomGlace${p.id}" value="${p.nom}" type="hidden">${p.nom}</a><a
												href="${pageContext.request.contextPath}/admin/submitDeleteP/${p.id}"><img
													style="width: 5%"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a>
											</td>
											<td></td>
											<td></td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-6"
			style="padding: 24px; background-color: #e5e5e5; height: auto; font-family: Brush Script MT">
			<div class="col-sm-12"
				style="padding: 12px; border-style: inset; border-width: 6px; border-color: black;">
				<div class="col-sm-12"
					style="border-style: inset; border-color: black; border-bottom: none">
					<br />
					<h1 style="text-align: center; font-size: 300%">
						Les Vins <a style="color: black" data-toggle="modal"
							href="#ModalAjoutVins"><img style="width: 5%"
							src="${pageContext.request.contextPath}/resources/images/plus.png"></a>
					</h1>
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
									<td>&nbsp;</td>
								</tr>
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="v" items="${listeVinsRouge}">

										<tr>
											<td style="text-align: center; width: 65%;"><a
												style="color: black" data-toggle="modal" href="#ModalVins"
												onclick="setIdVins(${v.id})"><input id="nomVins${v.id}"
													value="${v.appelation}" type="hidden"><input
													id="typeVins${v.id}" value="${v.type}" type="hidden">${v.appelation}</a></td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prixVVins${v.id}" value="${v.prixv}" type="hidden">${v.prixv}</td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prix25Vins${v.id}" value="${v.prix25}" type="hidden">${v.prix25}</td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prix50Vins${v.id}" value="${v.prix50}" type="hidden">${v.prix50}</td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prixBVins${v.id}" value="${v.prixb}" type="hidden">${v.prixb}</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteV/${v.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
							<table class="table" style="background-color: #e5e5e5">
								<tr>
									<td style="text-align: center; width: 43%"></td>
									<td style="text-align: center; font-size: 140%">Verre</td>
									<td style="text-align: center; font-size: 140%">25cl</td>
									<td style="text-align: center; font-size: 140%">50cl</td>
									<td style="text-align: center; font-size: 140%">Bouteille</td>
									<td>&nbsp;</td>
								</tr>
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="v" items="${listeVinsBlanc}">

										<tr>
											<td style="text-align: center; width: 65%;"><a
												style="color: black" data-toggle="modal" href="#ModalVins"
												onclick="setIdVins(${v.id})"><input id="nomVins${v.id}"
													value="${v.appelation}" type="hidden"><input
													id="typeVins${v.id}" value="${v.type}" type="hidden">${v.appelation}</a></td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prixVVins${v.id}" value="${v.prixv}" type="hidden">${v.prixv}</td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prix25Vins${v.id}" value="${v.prix25}" type="hidden">${v.prix25}</td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prix50Vins${v.id}" value="${v.prix50}" type="hidden">${v.prix50}</td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prixBVins${v.id}" value="${v.prixb}" type="hidden">${v.prixb}</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteV/${v.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
							<table class="table" style="background-color: #e5e5e5">
								<tr>
									<td style="text-align: center; width: 43%"></td>
									<td style="text-align: center; font-size: 140%">Verre</td>
									<td style="text-align: center; font-size: 140%">25cl</td>
									<td style="text-align: center; font-size: 140%">50cl</td>
									<td style="text-align: center; font-size: 140%">Bouteille</td>
									<td>&nbsp;</td>

								</tr>
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="v" items="${listeVinsRose}">

										<tr>
											<td style="text-align: center; width: 65%;"><a
												style="color: black" data-toggle="modal" href="#ModalVins"
												onclick="setIdVins(${v.id})"><input id="nomVins${v.id}"
													value="${v.appelation}" type="hidden"><input
													id="typeVins${v.id}" value="${v.type}" type="hidden">${v.appelation}</a></td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prixVVins${v.id}" value="${v.prixv}" type="hidden">${v.prixv}</td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prix25Vins${v.id}" value="${v.prix25}" type="hidden">${v.prix25}</td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prix50Vins${v.id}" value="${v.prix50}" type="hidden">${v.prix50}</td>
											<td style="text-align: left; width: 120%; font-size: 75%"><input
												id="prixBVins${v.id}" value="${v.prixb}" type="hidden">${v.prixb}</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteV/${v.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center; font-size: 300%">
						Les Boissons<a style="color: black" data-toggle="modal"
							href="#ModalAjoutBoissons"><img style="width: 5%"
							src="${pageContext.request.contextPath}/resources/images/plus.png"></a>
					</h1>
					<h1 style="text-align: center">
						<img style="width: 20%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h1>
					<h1 style="text-align: center">Les Bierres pression</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5">
								<tr>
									<td style="text-align: center; width: 43%"></td>
									<td style="text-align: center; font-size: 140%">25cl</td>
									<td style="text-align: center; font-size: 140%">50cl</td>
								</tr>
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="b" items="${listeBierreP}">
										<tr>
											<td style="text-align: center; width: 43%"><a
												style="color: black" data-toggle="modal"
												href="#ModalBoissons" onclick="setIdBoisson(${b.id})"><input
													id="nomBoisson${b.id}" value="${b.nom}" type="hidden"><input
													id="catBoisson${b.id}" value="${b.categorie}" type="hidden">${b.nom}</a></td>

											<td style="text-align: center; font-size: 75%"><input
												id="prixPBoisson${b.id}" value="${b.prixp}" type="hidden">${b.prixp}€
											</td>
											<td style="text-align: center; font-size: 75%"><input
												id="prixGBoisson${b.id}" value="${b.prixg}" type="hidden">${b.prixg}€
											</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteB/${b.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">Les Bierres bouteilles</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">

								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="b" items="${listeBierreB}">

										<tr>
											<td style="text-align: center; width: 43%"><a
												style="color: black" data-toggle="modal"
												href="#ModalBoissons" onclick="setIdBoisson(${b.id})"><input
													id="nomBoisson${b.id}" value="${b.nom}" type="hidden"><input
													id="catBoisson${b.id}" value="${b.categorie}" type="hidden">${b.nom}</a></td>
											<td style="text-align: center; font-size: 75%"><input
												id="prixPBoisson${b.id}" value="${b.prixp}" type="hidden">${b.prixp}€
											</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteB/${b.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">Les Apéritifs</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="b" items="${listeApero}">

										<tr>
											<td style="text-align: center; width: 43%"><a
												style="color: black" data-toggle="modal"
												href="#ModalBoissons" onclick="setIdBoisson(${b.id})"><input
													id="nomBoisson${b.id}" value="${b.nom}" type="hidden"><input
													id="catBoisson${b.id}" value="${b.categorie}" type="hidden">${b.nom}</a></td>
											<td style="text-align: center; font-size: 75%"><input
												id="prixPBoisson${b.id}" value="${b.prixp}" type="hidden">${b.prixp}€
											</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteB/${b.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">Les Champagnes</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="b" items="${listeChamp}">

										<tr>
											<td style="text-align: center; width: 43%"><a
												style="color: black" data-toggle="modal"
												href="#ModalBoissons" onclick="setIdBoisson(${b.id})"><input
													id="nomBoisson${b.id}" value="${b.nom}" type="hidden"><input
													id="catBoisson${b.id}" value="${b.categorie}" type="hidden">${b.nom}</a></td>
											<td style="text-align: center; font-size: 75%"><input
												id="prixPBoisson${b.id}" value="${b.prixp}" type="hidden">${b.prixp}€
											</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteB/${b.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">Les Whiskies</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="b" items="${listeWhiskie}">

										<tr>
											<td style="text-align: center; width: 43%"><a
												style="color: black" data-toggle="modal"
												href="#ModalBoissons" onclick="setIdBoisson(${b.id})"><input
													id="nomBoisson${b.id}" value="${b.nom}" type="hidden"><input
													id="catBoisson${b.id}" value="${b.categorie}" type="hidden">${b.nom}</a></td>
											<td style="text-align: center; font-size: 75%"><input
												id="prixPBoisson${b.id}" value="${b.prixp}" type="hidden">${b.prixp}€
											</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteB/${b.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">Les Bourbons</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="b" items="${listeBourbon}">

										<tr>
											<td style="text-align: center; width: 43%"><a
												style="color: black" data-toggle="modal"
												href="#ModalBoissons" onclick="setIdBoisson(${b.id})"><input
													id="nomBoisson${b.id}" value="${b.nom}" type="hidden"><input
													id="catBoisson${b.id}" value="${b.categorie}" type="hidden">${b.nom}</a></td>
											<td style="text-align: center; font-size: 75%"><input
												id="prixPBoisson${b.id}" value="${b.prixp}" type="hidden">${b.prixp}€
											</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteB/${b.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">Les Rhums</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="b" items="${listeRhum}">

										<tr>
											<td style="text-align: center; width: 43%"><a
												style="color: black" data-toggle="modal"
												href="#ModalBoissons" onclick="setIdBoisson(${b.id})"><input
													id="nomBoisson${b.id}" value="${b.nom}" type="hidden"><input
													id="catBoisson${b.id}" value="${b.categorie}" type="hidden">${b.nom}</a></td>
											<td style="text-align: center; font-size: 75%"><input
												id="prixPBoisson${b.id}" value="${b.prixp}" type="hidden">${b.prixp}€
											</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteB/${b.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">Les Digestifs</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="b" items="${listeDigeo}">

										<tr>
											<td style="text-align: center; width: 43%"><a
												style="color: black" data-toggle="modal"
												href="#ModalBoissons" onclick="setIdBoisson(${b.id})"><input
													id="nomBoisson${b.id}" value="${b.nom}" type="hidden"><input
													id="catBoisson${b.id}" value="${b.categorie}" type="hidden">${b.nom}</a></td>
											<td style="text-align: center; font-size: 75%"><input
												id="prixPBoisson${b.id}" value="${b.prixp}" type="hidden">${b.prixp}€
											</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteB/${b.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">Les Sans alcool</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="b" items="${listeSA}">

										<tr>
											<td style="text-align: center; width: 43%"><a
												style="color: black" data-toggle="modal"
												href="#ModalBoissons" onclick="setIdBoisson(${b.id})"><input
													id="nomBoisson${b.id}" value="${b.nom}" type="hidden"><input
													id="catBoisson${b.id}" value="${b.categorie}" type="hidden">${b.nom}</a></td>
											<td style="text-align: center; font-size: 75%"><input
												id="prixPBoisson${b.id}" value="${b.prixp}" type="hidden">${b.prixp}€
											</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteB/${b.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">Les Eaux</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">
								<tr>
									<td style="text-align: center; width: 43%"></td>
									<td style="text-align: center; font-size: 140%">50cl</td>
									<td style="text-align: center; font-size: 140%">1L</td>
								</tr>
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="b" items="${listeEau}">

										<tr>
											<td style="text-align: center; width: 43%"><a
												style="color: black" data-toggle="modal"
												href="#ModalBoissons" onclick="setIdBoisson(${b.id})"><input
													id="nomBoisson${b.id}" value="${b.nom}" type="hidden"><input
													id="catBoisson${b.id}" value="${b.categorie}" type="hidden">${b.nom}</a></td>
											<td style="text-align: center; font-size: 75%"><input
												id="prixPBoisson${b.id}" value="${b.prixp}" type="hidden">${b.prixp}€
											</td>
											<td style="text-align: center; font-size: 75%"><input
												id="prixGBoisson${b.id}" value="${b.prixg}" type="hidden">${b.prixg}€
											</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteB/${b.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
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
					<h1 style="text-align: center">Les Boissons chaudes</h1>
					<h4 style="text-align: center">
						<img style="width: 10%"
							src="${pageContext.request.contextPath}/resources/images/underlineVins.jpg">
					</h4>
					<div class="row">
						<div class="table table-responsive">
							<table class="table" style="background-color: #e5e5e5;">
								<tbody
									style="width: 100%; background-color: #e5e5e5; font-size: 200%">
									<c:forEach var="b" items="${listeBoissonChaude}">

										<tr>
											<td style="text-align: center; width: 43%"><a
												style="color: black" data-toggle="modal"
												href="#ModalBoissons" onclick="setIdBoisson(${b.id})"><input
													id="nomBoisson${b.id}" value="${b.nom}" type="hidden"><input
													id="catBoisson${b.id}" value="${b.categorie}" type="hidden">${b.nom}</a></td>
											<td style="text-align: center; font-size: 75%"><input
												id="prixPBoisson${b.id}" value="${b.prixp}" type="hidden">${b.prixp}€
											</td>
											<td><a
												href="${pageContext.request.contextPath}/admin/submitDeleteB/${b.id}"><img
													style="width: 23px"
													src="${pageContext.request.contextPath}/resources/images/poubelle.png"></a></td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
			</div>

		</div>
		<%@ include file="Modal.jsp"%>
	</div>


	<div style="width: 400px; height: 50px;"></div>
	<%@ include file="templates/footer.html"%>

</body>
<script type="text/javascript">


function setIdSalades(id) {
	var nom=document.getElementById("nomSalades"+id).value;
	var prixp =document.getElementById("prixPSalades"+id).value;
	var prixg =document.getElementById("prixGSalades"+id).value;
	var cat = 'Salade'
	document.getElementById("idSalades").value=id;
	document.getElementById("idNomSalades").value=nom;
	document.getElementById("idPrixPSalades").value=prixp;
	document.getElementById("idPrixGSalades").value=prixg;
	document.getElementById("idCatSalade").value=cat;
}
function setIdPlanchas(id) {
	var nom=document.getElementById("nomPlanchas"+id).value;
	var prixp =document.getElementById("prixPlanchasP"+id).value;
	var prixg =document.getElementById("prixPlanchasG"+id).value;
	var cat = 'Plancha'
	document.getElementById("idPlanchas").value=id;
	document.getElementById("idNomPlanchas").value=nom;
	document.getElementById("idPrixPPlanchas").value=prixp;
	document.getElementById("idPrixGPlanchas").value=prixg;
	document.getElementById("idCatPlancha").value=cat;
}
function setIdPrixGlace(id) {
	var prixm =document.getElementById("prixMGlaces"+id).value;
	var prixp =document.getElementById("prixPGlaces"+id).value;
	var prixg =document.getElementById("prixGGlaces"+id).value;
	document.getElementById("idPrixGlaces").value=id;
	document.getElementById("idPrixPGlaces").value=prixp;
	document.getElementById("idPrixMGlaces").value=prixm;
	document.getElementById("idPrixGGlaces").value=prixg;
	document.getElementById("idCatPrixGlaces").value='Glace';
	
}
function setIdPlats(id) {
	var nom=document.getElementById("nomPlats"+id).value;
	var prix =document.getElementById("prixPlats"+id).value;
	var cat = document.getElementById("catPlats"+id).value
	document.getElementById("idPlats").value=id;
	document.getElementById("idNomPlats").value=nom;
	document.getElementById("idPrixPlats").value=prix;
	document.getElementById("idCat").value=cat;
}

function setIdGlace(id) {
	var nom=document.getElementById("nomGlace"+id).value;
	document.getElementById("idGlaces").value=id;
	document.getElementById("idNomGlaces").value=nom;
	document.getElementById("idCatGlaces").value='Glace';
}
function setIdVins(id) {
	var nom=document.getElementById("nomVins"+id).value;
	var prixv =document.getElementById("prixVVins"+id).value;
	var prix25 =document.getElementById("prix25Vins"+id).value;
	var prix50 =document.getElementById("prix50Vins"+id).value;
	var prixb =document.getElementById("prixBVins"+id).value;
	var type=document.getElementById("typeVins"+id).value;
	document.getElementById("idVins").value=id;
	document.getElementById("idNomVins").value=nom;
	document.getElementById("idPrixVVins").value=prixv;
	document.getElementById("idPrix25Vins").value=prix25;
	document.getElementById("idPrix50Vins").value=prix50;
	document.getElementById("idPrixBVins").value=prixb;
	document.getElementById("idType").value=type;
}
function setIdBoisson(id) {
	var nom=document.getElementById("nomBoisson"+id).value;
	var prixp =document.getElementById("prixPBoisson"+id).value;
	if (document.getElementById("prixGBoisson"+id)!=null){
	var prixg =document.getElementById("prixGBoisson"+id).value;
	}
	var cat=document.getElementById("catBoisson"+id).value;
	document.getElementById("idBoisson").value=id;
	document.getElementById("idNomBoisson").value=nom;
	document.getElementById("idPrixPBoisson").value=prixp;
	document.getElementById("idPrixGBoisson").value=prixg;
	document.getElementById("idCatBoisson").value=cat;
}
</script>

</html>