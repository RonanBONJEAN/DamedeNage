<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- ajout taglib form de spring mvc -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Dame de Nage : Infos pratiques</title>
<link rel="icon" href="<c:url value="/resources/images/logo.PNG"/>" />
<!-- ajout de la lib de boostrap css -->
<link rel="stylesheet"
	href='<c:url value="/resources/css/bootstrap.css"/>' />
<script src='<c:url value="/resources/js/jquery-3.3.1.js"/>'></script>
<script type="text/javascript"
	src='<c:url value="/resources/js/bootstrap.js"/>'></script>
<script type="text/javascript"
	src='<c:url value="/resources/js/javascript.js"/>'></script>


</head>
<link rel="stylesheet" href='<c:url value="/resources/css/styles.css"/>' />
<body style="background-color: #c6a664">

	<%@ include file="templates/header.html"%>

	<div style="width: 400px; height: 50px;"></div>
	<div class="container" style="text-align: center">
		<div class="col-sm-12">

			<br />

			<div class="row">

				<h2
					style="background-color: #c8101e; text-align: center; width: 100%; padding: 15px">Les
					Horaires</h2>
				<div class="table table-responsive">
					<table class="table" style="width: 100%; margin-top: none">
						<tbody style="background-color: white; font-size: large">
							<c:forEach var="h" items="${Horraires}">
								<tr>
									<c:if test="${h.saison.equals('été')}">
										<td style="text-align: right">Horaires en Saison</td>
										<td>Fermé le ${h.jourFerme}.<br /> ____________<br />
											Le midi de ${h.ouvertureMidi} à ${h.fermetureMidi}.<br />Le
											soir, premier service à ${h.ouvertureSoir}, deuxième service
											à ${h.fermetureSoir}.
										</td>
									</c:if>

								</tr>
								<tr>
									<c:if test="${h.saison.equals('inter')}">
										<td style="text-align: right">Horaires mi-Saison</td>
										<td>Fermé les ${h.jourFerme}.<br /> ____________<br />
											Le midi de ${h.ouvertureMidi} à ${h.fermetureMidi}.<br /> Le
											soir, premier service à ${h.ouvertureSoir}, deuxième service
											à ${h.fermetureSoir}.
										</td>
									</c:if>

								</tr>
								<tr>
									<c:if test="${h.saison.equals('hiver')}">
										<td style="text-align: right">Horaires hors Saison</td>
										<td>Fermé les ${h.jourFerme}.<br /> ____________<br />
											Le midi de ${h.ouvertureMidi} à ${h.fermetureMidi}.<br /> Le
											soir de ${h.ouvertureSoir} à ${h.fermetureSoir}.
										</td>
									</c:if>
								</tr>
							</c:forEach>
							<c:forEach var="h" items="${Horraires}">
								<c:if test="${h.saison.equals('hiver')}">
									<c:if test="${not empty h.fermeture}">
										<tr>
											<td style="text-align: right">Fermeture annuelle</td>
											<td>
												<h3 style="text-align: center; color: #c8101e">du
													${h.fermeture}</h3>
											</td>
										</tr>
									</c:if>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

		</div>
		<div class="col-sm-12">

			<br />

			<div class="row">
				<h2
					style="background-color: #c8101e; text-align: center; width: 100%; padding: 15px">Nous
					trouver</h2>
				<div class="table table-responsive">
					<table class="table-bordered" style="width: 100%">
						<tbody style="background-color: white; font-size: large">
							<tr>
								<td>4 place du port, 29241 Locquirec</td>
							</tr>
							<tr>
								<td>
									<!--The div element for the map -->
									<div id="map"
										style="border: 1px solid darkgrey; border-radius: 8px; height: 400px">
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script>
		// Initialisation et ajout de la carte
		function initMap() {
			// Récupérer latitude et longitude de la destination
			var destination = {
				lat : 48.691297,
				lng : -3.646148
			};
			// La carte centré sur la destination
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom : 15,
				center : destination
			});
			// Le marker sur la destination
			var marker = new google.maps.Marker({
				position : destination,
				map : map
			});
		};
	</script>

	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCwhSKNp9NwOqU38-3JKcoA-lVngtNO-1k&callback=initMap">
		
	</script>

	<%@ include file="templates/footer.html"%>
</body>

</html>