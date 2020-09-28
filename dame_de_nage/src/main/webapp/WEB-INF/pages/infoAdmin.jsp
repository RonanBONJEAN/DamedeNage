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

	<%@ include file="templates/menuAdmin.html"%>

	<div style="width: 400px; height: 50px;"></div>
	<div class="container" style="text-align: center">
		<div class="col-sm-12">

			<br />

			<div class="row">
				<div class="table table-responsive">
					<table class="table" style="width: 100%">
						<thead class="tablehead">
							<tr style="background-color: #c8101e">
								<th></th>
								<th style="text-align: center"><h3>Les Horaires</h3></th>
								<th></th>
							</tr>
						</thead>

						<tbody style="background-color: white">
							<c:forEach var="h" items="${Horraires}">
								<tr>
									<c:if test="${h.saison.equals('été')}">
										<td>Horaires en Saison</td>
										<td>Fermé le ${h.jourFerme}.<br /> ____________<br />
											Le midi de ${h.ouvertureMidi} à ${h.fermetureMidi}.<br />Le
											soir, premier service à ${h.ouvertureSoir}, deuxième service
											à ${h.fermetureSoir}.
										</td>
										
										<td style="width: 150px"><a data-toggle="modal"
											href="#ModalHorrairesété" onclick="setIdHorraireété(${h.id})"><input
												id="houvmid${h.id}" value="${h.ouvertureMidi}" type="hidden"><input
												id="hfermmid${h.id}" value="${h.fermetureMidi}"
												type="hidden"><input id="houvsoir${h.id}"
												value="${h.ouvertureSoir}" type="hidden"><input
												id="hfermsoir${h.id}" value="${h.fermetureSoir}"
												type="hidden"><input id="jferm${h.id}"
												value="${h.jourFerme}" type="hidden"><img
												style="width: 30%"
												src="${pageContext.request.contextPath}/resources/images/modifier.png"></a></td>
									</c:if>
								</tr>
								<tr>
									<c:if test="${h.saison.equals('inter')}">
										<td>Horaires mi-Saison</td>
										<td>Fermé les ${h.jourFerme}.<br /> ____________<br />
											Le midi de ${h.ouvertureMidi} à ${h.fermetureMidi}.<br /> Le
											soir, premier service à ${h.ouvertureSoir}, deuxième service
											à ${h.fermetureSoir}.
										</td>
										<td style="width: 150px"><a data-toggle="modal"
											href="#ModalHorrairesinter" onclick="setIdHorraireinter(${h.id})"><input
												id="houvmid${h.id}" value="${h.ouvertureMidi}" type="hidden"><input
												id="hfermmid${h.id}" value="${h.fermetureMidi}"
												type="hidden"><input id="houvsoir${h.id}"
												value="${h.ouvertureSoir}" type="hidden"><input
												id="hfermsoir${h.id}" value="${h.fermetureSoir}"
												type="hidden"><input id="jferm${h.id}"
												value="${h.jourFerme}" type="hidden"><img
												style="width: 30%"
												src="${pageContext.request.contextPath}/resources/images/modifier.png"></a></td>
									</c:if>

								</tr>
								<tr>
									<c:if test="${h.saison.equals('hiver')}">
										<td>Horaires hors Saison</td>
										<td>Fermé les ${h.jourFerme}.<br /> ____________<br />
											Le midi de ${h.ouvertureMidi} à ${h.fermetureMidi}.<br /> Le
											soir de ${h.ouvertureSoir} à ${h.fermetureSoir}.
										</td>
										<td><a data-toggle="modal" href="#ModalHorraireshiver"
											onclick="setIdHorrairehiver(${h.id})"><input
												id="houvmid${h.id}" value="${h.ouvertureMidi}" type="hidden"><input
												id="hfermmid${h.id}" value="${h.fermetureMidi}"
												type="hidden"><input id="houvsoir${h.id}"
												value="${h.ouvertureSoir}" type="hidden"><input
												id="hfermsoir${h.id}" value="${h.fermetureSoir}"
												type="hidden"><input id="jferm${h.id}"
												value="${h.jourFerme}" type="hidden"><img
												style="width: 30%"
												src="${pageContext.request.contextPath}/resources/images/modifier.png"></a></td>
									</c:if>

								</tr>

							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

		</div>
		<div class="col-sm-12">
			<c:forEach var="h" items="${Horraires}">
				<c:if test="${h.saison.equals('hiver')}">
						<c:if test="${not empty h.fermeture}">
						<h3 style="text-align: center; color: #c8101e">Fermeture
							annuel du ${h.fermeture}</h3>
					</c:if>
					<a data-toggle="modal" href="#ModalFermeture"
						onclick="setIdFerm(${h.id})"style="text-align: center;"><input id="date${h.id}"
												value="${h.fermeture}" type="hidden"> modfier les dates de fermeture
						annuelle </a>
				</c:if>
			</c:forEach>
			<br />

			<div class="row">
				<div class="table table-responsive">
					<table class="table-bordered" style="width: 100%">
						<thead class="tablehead">
							<tr style="background-color: #c8101e">
								<th style="text-align: center"><h3>Nous trouver</h3></th>
							</tr>
						</thead>

						<tbody style="background-color: white">
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
	<!-- Modal Fermeture -->
	<div class="modal fade" id="ModalFermeture" tabindex="-1" role="dialog"
		aria-labelledby="ModalFermeture" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h1 class="modal-title" id="ModalHorrairesTitle">Modification
						des dates de fermeture annuelle</h1>

				</div>
				<form:form method="POST" action="submitUpDateFerm"
					modelAttribute="horraires" cssClass="form-horizontal">

					<div class="modal-body">
						<div class="form-group" style="display: none">
							<label for="idFerm" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control" id="idFerm"
									path="id" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idDate" class="col-sm-6 control-label">date de début
								de fermeture annuelle</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idDated"
									path="fermeture" />
							</div>
						</div>
						<div class="form-group">
							<label for="idDate" class="col-sm-6 control-label">date de fin
								de fermeture annuelle</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idDatef"
									path="jourFerme" />
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group" style="margin-right: 10px">

							<input type="submit" value="Valider" class="btn btn-secondary"
								style="background-color: #c8101e; color: white" />
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Fermer</button>

						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!-- Modal Horraires -->
	<div class="modal fade" id="ModalHorrairesété" tabindex="-1"
		role="dialog" aria-labelledby="ModalHorraires" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h1 class="modal-title" id="ModalHorrairesTitle">Modification
						des horraires de haute saison</h1>

				</div>
				<form:form method="POST" action="submitUpDateH/été"
					modelAttribute="horraires" cssClass="form-horizontal">

					<div class="modal-body">
						<div class="form-group" style="display: none">
							<label for="idHété" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control" id="idHété"
									path="id" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idouvertureMidiété" class="col-sm-6 control-label">heure
								d'ouverture du midi</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idouvertureMidiété" path="ouvertureMidi"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idfermetureMidiété" class="col-sm-6 control-label">heure
								de fermeture du midi</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idfermetureMidiété" path="fermetureMidi"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idouvertureSoirété" class="col-sm-6 control-label">heure
								du premier service du Soir</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idouvertureSoirété" path="ouvertureSoir"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idfermetureSoirété" class="col-sm-6 control-label">heure
								du deuxième service du Soir</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idfermetureSoirété" path="fermetureSoir"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idjourFermeété" class="col-sm-6 control-label">Jour
								de fermeture</label>
							<div class="col-sm-6">
								<form:input type="text" id="idjourFermeété" path="jourFerme"
									required="required" />
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group" style="margin-right: 10px">

							<input type="submit" value="Modifier" class="btn btn-secondary"
								style="background-color: #c8101e; color: white" />
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Fermer</button>

						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!-- Modal Horraires -->
	<div class="modal fade" id="ModalHorraireshiver" tabindex="-1"
		role="dialog" aria-labelledby="ModalHorraires" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h1 class="modal-title" id="ModalHorrairesTitle">Modification
						des horraires hors saison</h1>

				</div>
				<form:form method="POST" action="submitUpDateH/hiver"
					modelAttribute="horraires" cssClass="form-horizontal">

					<div class="modal-body">
						<div class="form-group" style="display: none">
							<label for="idHhiver" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control" id="idHhiver"
									path="id" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idouvertureMidihiver" class="col-sm-6 control-label">heure
								d'ouverture du midi</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idouvertureMidihiver" path="ouvertureMidi"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idfermetureMidihiver" class="col-sm-6 control-label">heure
								de fermeture du midi</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idfermetureMidihiver" path="fermetureMidi"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idouvertureSoirhiver" class="col-sm-6 control-label">heure
								du premier service du Soir</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idouvertureSoirhiver" path="ouvertureSoir"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idfermetureSoirhiver" class="col-sm-6 control-label">heure
								du deuxième service du Soir</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idfermetureSoirhiver" path="fermetureSoir"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idjourFermehiver" class="col-sm-6 control-label">Jour
								d'ouverture</label>
							<div class="col-sm-6">
								<form:input type="text" id="idjourFermehiver" path="jourFerme"
									required="required" />
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group" style="margin-right: 10px">

							<input type="submit" value="Modifier" class="btn btn-secondary"
								style="background-color: #c8101e; color: white" />
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Fermer</button>

						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!-- Modal Horraires -->
	<div class="modal fade" id="ModalHorrairesinter" tabindex="-1"
		role="dialog" aria-labelledby="ModalHorraires" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h1 class="modal-title" id="ModalHorrairesTitle">Modification
						des horraires de mi-saison</h1>

				</div>
				<form:form method="POST" action="submitUpDateH/inter"
					modelAttribute="horraires" cssClass="form-horizontal">

					<div class="modal-body">
						<div class="form-group" style="display: none">
							<label for="idHinter" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control" id="idHinter"
									path="id" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idouvertureMidiinter" class="col-sm-6 control-label">heure
								d'ouverture du midi</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idouvertureMidiinter" path="ouvertureMidi"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idfermetureMidiinter" class="col-sm-6 control-label">heure
								de fermeture du midi</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idfermetureMidiinter" path="fermetureMidi"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idouvertureSoirinter" class="col-sm-6 control-label">heure
								du premier service du Soir</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idouvertureSoirinter" path="ouvertureSoir"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idfermetureSoirinter" class="col-sm-6 control-label">heure
								du deuxième service du Soir</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idfermetureSoirinter" path="fermetureSoir"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idjourFermeinter" class="col-sm-6 control-label">Jour
								d'ouverture</label>
							<div class="col-sm-6">
								<form:input type="text" id="idjourFermeinter" path="jourFerme"
									required="required" />
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group" style="margin-right: 10px">

							<input type="submit" value="Modifier" class="btn btn-secondary"
								style="background-color: #c8101e; color: white" />
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Fermer</button>

						</div>
					</div>
				</form:form>
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
		
		function setIdHorraireété(id) {
			var houvmid=document.getElementById("houvmid"+id).value;
			var hfermmid =document.getElementById("hfermmid"+id).value;
			var houvsoir=document.getElementById("houvsoir"+id).value;
			var hfermsoir=document.getElementById("hfermsoir"+id).value;
			var jferm=document.getElementById("jferm"+id).value;
			document.getElementById("idHété").value=id;
			document.getElementById("idouvertureMidiété").value=houvmid;
			document.getElementById("idfermetureMidiété").value=hfermmid;
			document.getElementById("idouvertureSoirété").value=houvsoir;
			document.getElementById("idfermetureSoirété").value=hfermsoir;
			document.getElementById("idjourFermeété").value=jferm;
		}
		function setIdHorrairehiver(id) {
			var houvmid=document.getElementById("houvmid"+id).value;
			var hfermmid =document.getElementById("hfermmid"+id).value;
			var houvsoir=document.getElementById("houvsoir"+id).value;
			var hfermsoir=document.getElementById("hfermsoir"+id).value;
			var jferm=document.getElementById("jferm"+id).value;
			document.getElementById("idHhiver").value=id;
			document.getElementById("idouvertureMidihiver").value=houvmid;
			document.getElementById("idfermetureMidihiver").value=hfermmid;
			document.getElementById("idouvertureSoirhiver").value=houvsoir;
			document.getElementById("idfermetureSoirhiver").value=hfermsoir;
			document.getElementById("idjourFermehiver").value=jferm;
		}
		function setIdHorraireinter(id) {
			var houvmid=document.getElementById("houvmid"+id).value;
			var hfermmid =document.getElementById("hfermmid"+id).value;
			var houvsoir=document.getElementById("houvsoir"+id).value;
			var hfermsoir=document.getElementById("hfermsoir"+id).value;
			var jferm=document.getElementById("jferm"+id).value;
			document.getElementById("idHinter").value=id;
			document.getElementById("idouvertureMidiinter").value=houvmid;
			document.getElementById("idfermetureMidiinter").value=hfermmid;
			document.getElementById("idouvertureSoirinter").value=houvsoir;
			document.getElementById("idfermetureSoirinter").value=hfermsoir;
			document.getElementById("idjourFermeinter").value=jferm;
		}
		function setIdFerm(id) {
			var date=document.getElementById("date"+id).value;
			document.getElementById("idFerm").value=id;
			
		}
		
	</script>

	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCwhSKNp9NwOqU38-3JKcoA-lVngtNO-1k&callback=initMap">
		
	</script>

	<%@ include file="templates/footer.html"%>
</body>

</html>