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


	<!-- Modal Plats -->
	<div class="modal fade" id="ModalPlats" tabindex="-1" role="dialog"
		aria-labelledby="ModalPlats" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalPlatsTitle">Formulaire de
						Modification</h2>

				</div>
				<form:form method="POST" action="submitUpDateP"
					modelAttribute="plats" cssClass="form-horizontal">

					<div class="modal-body">
						<div class="form-group" style="display: none">
							<label for="idPlats" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idPlats"
									placeholder="Nom" path="id" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idNomPlats" class="col-sm-2 control-label">Nom</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control" id="idNomPlats"
									placeholder="Nom" path="nom" required="required" />
							</div>
						</div>

						<div class="form-group">
							<label for="idPrixPlats" class="col-sm-2 control-label">Prix</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idPrixPlats"
									placeholder="Prix" path="prixm" required="required" />
							</div>
						</div>
						<div class="form-group" style="display: none">
							<label for="idCat" class="col-sm-2 control-label">Cat</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idCat"
									placeholder="Cat" path="categorie" required="required" />
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
	<div class="modal fade" id="ModalAjoutPlats" tabindex="-1"
		role="dialog" aria-labelledby="ModalAjoutPlats" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalAjoutPlatsTitle">formulaire
						d'ajout</h2>

				</div>
				<form:form method="POST" action="submitAddP" modelAttribute="plats"
					cssClass="form-horizontal">

					<div class="modal-body">

						<div class="form-group">
							<label for="idNom" class="col-sm-2 control-label">Nom</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idNom"
									placeholder="Nom" path="nom" required="required" />
							</div>
						</div>

						<div class="form-group">
							<label for="idPrix" class="col-sm-2 control-label">Prix</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idPrix"
									placeholder="Prix" path="prixm" required="required" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">Catégorie</label>

							<div class="col-sm-3">
								<form:select path="categorie">
									<form:option value="Tapas" />
									<form:option value="Plancha" />
									<form:option value="Salade" />
									<form:option value="huitre" />
									<form:option value="Plat" />
									<form:option value="Moule" />
									<form:option value="Burger" />
									<form:option value="Dessert" />
									<form:option value="Glace" />
									<form:option value="CoupeSA" />
									<form:option value="CoupeAA" />
								</form:select>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group" style="margin-right: 10px">

							<input type="submit" value="Ajouter" class="btn btn-secondary"
								style="background-color: #c8101e; color: white" />
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Fermer</button>

						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!-- Modal Plancha -->
	<div class="modal fade" id="ModalPlanchas" tabindex="-1" role="dialog"
		aria-labelledby="ModalPlanchas" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalPlanchasTitle">Formulaire de
						Modification</h2>

				</div>
				<form:form method="POST" action="submitUpDateP"
					modelAttribute="plats" cssClass="form-horizontal">

					<div class="modal-body">
						<div class="form-group" style="display: none">
							<label for="idPlanchas" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idPlanchas"
									placeholder="Nom" path="id" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idNomPlanchas" class="col-sm-2 control-label">Nom</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idNomPlanchas" placeholder="Nom" path="nom"
									required="required" />
							</div>
						</div>

						<div class="form-group">
							<label for="idPrixPlanchas" class="col-sm-2 control-label">Prix
								petite</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idPrixPPlanchas" placeholder="Prix" path="prixp"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrixPlanchas" class="col-sm-2 control-label">Prix
								grande</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idPrixGPlanchas" placeholder="Prix" path="prixg"
									required="required" />
							</div>
						</div>

						<div class="form-group" style="display: none">
							<label for="idCatPlancha" class="col-sm-2 control-label">Cat</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idCatPlancha" placeholder="Cat" path="categorie"
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
	<div class="modal fade" id="ModalAjoutPlanchas" tabindex="-1"
		role="dialog" aria-labelledby="ModalAjoutPlanchas" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalAjoutPlanchasTitle">Formulaire
						d'Ajout</h2>

				</div>
				<form:form method="POST" action="submitAddP" modelAttribute="plats"
					cssClass="form-horizontal">

					<div class="modal-body">

						<div class="form-group">
							<label for="idNom" class="col-sm-2 control-label">Nom</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idNom"
									placeholder="Nom" path="nom" required="required" />
							</div>
						</div>

						<div class="form-group">
							<label for="idPrix" class="col-sm-2 control-label">Prix
								petite</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idPrix"
									placeholder="Prix" path="prixp" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrix" class="col-sm-2 control-label">Prix
								grande</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idPrix"
									placeholder="Prix" path="prixg" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Catégorie</label>
							<div class="col-sm-3">
								<form:select path="categorie">
									<form:option value="Plancha" />
									<form:option value="Tapas" />
									<form:option value="Salade" />
									<form:option value="huitre" />
									<form:option value="Plat" />
									<form:option value="Moule" />
									<form:option value="burger" />
									<form:option value="Dessert" />
									<form:option value="Glace" />
									<form:option value="CoupeSA" />
									<form:option value="CoupeAA" />
								</form:select>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group" style="margin-right: 10px">

							<input type="submit" value="Ajouter" class="btn btn-secondary"
								style="background-color: #c8101e; color: white" />
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Fermer</button>

						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!-- Modal Salades -->
	<div class="modal fade" id="ModalSalades" tabindex="-1" role="dialog"
		aria-labelledby="ModalSalades" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalSaladesTitle">Formulaire de
						Modification</h2>
				</div>
				<form:form method="POST" action="submitUpDateP"
					modelAttribute="plats" cssClass="form-horizontal">

					<div class="modal-body">
						<div class="form-group" style="display: none">
							<label for="idSalades" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idSalades"
									placeholder="Nom" path="id" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idNomSalades" class="col-sm-2 control-label">Nom</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idNomSalades" placeholder="Nom" path="nom"
									required="required" />
							</div>
						</div>

						<div class="form-group">
							<label for="idPrixSalades" class="col-sm-2 control-label">Prix
								entrée</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idPrixPSalades" placeholder="Prix" path="prixp"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrixSalades" class="col-sm-2 control-label">Prix
								plat</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idPrixGSalades" placeholder="Prix" path="prixg"
									required="required" />
							</div>
						</div>

						<div class="form-group" style="display: none">
							<label for="idCatSalade" class="col-sm-2 control-label">Cat</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idCatSalade"
									path="categorie" required="required" />
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
	<div class="modal fade" id="ModalAjoutSalades" tabindex="-1"
		role="dialog" aria-labelledby="ModalAjoutSalades" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalAjoutSaladesTitle">Formulaire
						d'Ajout</h2>
				</div>
				<form:form method="POST" action="submitAddP" modelAttribute="plats"
					cssClass="form-horizontal">

					<div class="modal-body">

						<div class="form-group">
							<label for="idNom" class="col-sm-2 control-label">Nom</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idNom"
									placeholder="Nom" path="nom" required="required" />
							</div>
						</div>

						<div class="form-group">
							<label for="idPrix" class="col-sm-2 control-label">Prix
								entrée</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idPrix"
									placeholder="Prix" path="prixp" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrixSalades" class="col-sm-2 control-label">Prix
								plat</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idPrixSalades" placeholder="Prix" path="prixg"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Catégorie</label>
							<div class="col-sm-3">
								<form:select path="categorie">
									<form:option value="Salade" />
									<form:option value="Tapas" />
									<form:option value="Plancha" />
									<form:option value="huitre" />
									<form:option value="Plat" />
									<form:option value="Moule" />
									<form:option value="burger" />
									<form:option value="Dessert" />
									<form:option value="Glace" />
									<form:option value="CoupeSA" />
									<form:option value="CoupeAA" />
								</form:select>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group" style="margin-right: 10px">

							<input type="submit" value="Ajouter" class="btn btn-secondary"
								style="background-color: #c8101e; color: white" />
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Fermer</button>

						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>

	<!-- Modal Dessert -->
	<div class="modal fade" id="ModalGlaces" tabindex="-1" role="dialog"
		aria-labelledby="ModalGlaces" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalGlacesTitle">Modification des
						Glaces</h2>
				</div>
				<form:form method="POST" action="submitUpDateP"
					modelAttribute="plats" cssClass="form-horizontal">

					<div class="modal-body">
						<div class="form-group" style="display: none">
							<label for="idGlaces" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idGlaces"
									placeholder="Nom" path="id" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idNomGlaces" class="col-sm-2 control-label">Nom</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control" id="idNomGlaces"
									placeholder="Nom" path="nom" required="required" />
							</div>
						</div>
						<div class="form-group" style="display: none">
							<label for="idCatGlaces" class="col-sm-2 control-label">Cat</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idCatGlaces"
									path="categorie" required="required" />
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
	<div class="modal fade" id="ModalAjoutGlaces" tabindex="-1"
		role="dialog" aria-labelledby="ModalAjoutGlaces" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalAjoutGlacesTitle">Ajout d'une
						Glace</h2>
				</div>
				<form:form method="POST" action="submitAddP" modelAttribute="plats"
					cssClass="form-horizontal">

					<div class="modal-body">

						<div class="form-group">
							<label for="idNom" class="col-sm-2 control-label">Nom</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idNom"
									placeholder="Nom" path="nom" required="required" />
							</div>
						</div>
					</div>
					<div class="form-group" style="display: none">
						<label for="idCatGlaces" class="col-sm-2 control-label">Cat</label>
						<div class="col-sm-3">
							<form:input type="text" cssClass="form-control" id="idCatGlaces"
								value="Glace" path="categorie" required="required" />
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group" style="margin-right: 10px">

							<input type="submit" value="Ajouter" class="btn btn-secondary"
								style="background-color: #c8101e; color: white" />
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Fermer</button>

						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!-- Modal Prix Glaces -->
	<div class="modal fade" id="ModalPrixGlace" tabindex="-1" role="dialog"
		aria-labelledby="ModalPrixGlaces" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalGlacesTitle">Modification des
						Prix des Glaces</h2>
				</div>
				<form:form method="POST" action="submitUpDateP"
					modelAttribute="plats" cssClass="form-horizontal">

					<div class="modal-body">
						<div class="form-group" style="display: none">
							<label for="idPrixGlaces" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idPrixGlaces" placeholder="Nom" path="id"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrixPGlaces" class="col-sm-2 control-label">Prix
								1 boule</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idPrixPGlaces" placeholder="Prix" path="prixp"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrixMGlaces" class="col-sm-2 control-label">Prix
								2 boules</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idPrixMGlaces" placeholder="Prix" path="prixm"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrixGGlaces" class="col-sm-2 control-label">Prix
								3 boules</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idPrixGGlaces" placeholder="Prix" path="prixg"
									required="required" />
							</div>
						</div>

					</div>
					<div class="form-group" style="display: none">
						<label for="idCatPrixGlaces" class="col-sm-2 control-label">Cat</label>
						<div class="col-sm-3">
							<form:input type="text" cssClass="form-control"
								id="idCatPrixGlaces" value="Glace" path="categorie"
								required="required" />
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
	<!-- Modal Vins -->
	<div class="modal fade" id="ModalVins" tabindex="-1" role="dialog"
		aria-labelledby="ModalVins" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalVinsTitle">Modification des
						Vins</h2>
				</div>
				<form:form method="POST" action="submitUpDateV"
					modelAttribute="vins" cssClass="form-horizontal">

					<div class="modal-body">
						<div class="form-group" style="display: none">
							<label for="idVins" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idVins"
									placeholder="Nom" path="id" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idNomVins" class="col-sm-2 control-label">Appellation</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control" id="idNomVins"
									placeholder="Appellation" path="appelation" required="required" />
							</div>
						</div>

						<div class="form-group">
							<label for="idPrixVVins" class="col-sm-2 control-label">Prix
								au verre</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idPrixVVins"
									placeholder="Prix" path="prixv" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrix25Vins" class="col-sm-2 control-label">Prix
								pichet 25cl</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idPrix25Vins" placeholder="Prix" path="prix25"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrix50Vins" class="col-sm-2 control-label">Prix
								pichet 50cl</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idPrix50Vins" placeholder="Prix" path="prix50"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrixBVins" class="col-sm-2 control-label">Prix
								à la bouteille</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idPrixBVins"
									placeholder="Prix" path="prixb" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idType" class="col-sm-2 control-label">Type</label>
							<div class="col-sm-3" id="idType">
								<form:select path="type">
									<form:option value="Rouge" />
									<form:option value="Blanc" />
									<form:option value="Rosé" />
								</form:select>
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
	<div class="modal fade" id="ModalAjoutVins" tabindex="-1" role="dialog"
		aria-labelledby="ModalAjoutVins" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalAjoutVinsTitle">Ajout d'un
						Vins</h2>
				</div>
				<form:form method="POST" action="submitAddV" modelAttribute="vins"
					cssClass="form-horizontal">

					<div class="modal-body">

						<div class="form-group">
							<label for="idCru" class="col-sm-2 control-label">Appellation</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idCru"
									placeholder="Appellation" path="Appelation" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrixVVins" class="col-sm-2 control-label">Prix
								au verre</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									placeholder="Prix" path="prixv" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrix25Vins" class="col-sm-2 control-label">Prix
								pichet 25cl</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									placeholder="Prix" path="prix25" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrix50Vins" class="col-sm-2 control-label">Prix
								pichet 50cl</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									placeholder="Prix" path="prix50" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrixBVins" class="col-sm-2 control-label">Prix
								à la bouteille</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									placeholder="Prix" path="prixb" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idType" class="col-sm-2 control-label">Type</label>
							<div class="col-sm-3" id="idType">
								<form:select path="type">
									<form:option value="Rouge" />
									<form:option value="Blanc" />
									<form:option value="Rosé" />
								</form:select>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group" style="margin-right: 10px">

							<input type="submit" value="Ajouter" class="btn btn-secondary"
								style="background-color: #c8101e; color: white" />
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Fermer</button>

						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!-- Modal Boissons -->
	<div class="modal fade" id="ModalBoissons" tabindex="-1" role="dialog"
		aria-labelledby="ModalBoissons" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalBoissonsTitle">Modification
						des Vins</h2>
				</div>
				<form:form method="POST" action="submitUpDateB"
					modelAttribute="boissons" cssClass="form-horizontal">

					<div class="modal-body">
						<div class="form-group" style="display: none">
							<label for="idBoisson" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" id="idBoisson"
									placeholder="Nom" path="id" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idNomBoisson" class="col-sm-2 control-label">Nom</label>
							<div class="col-sm-6">
								<form:input type="text" cssClass="form-control"
									id="idNomBoisson" placeholder="Nom" path="nom"
									required="required" />
							</div>
						</div>

						<div class="form-group">
							<label for="idPrixPBoisson" class="col-sm-2 control-label">Prix
								25cl</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idPrixPBoisson" placeholder="Prix" path="prixp"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrixGBoisson" class="col-sm-2 control-label">Prix
								50cl</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idPrixGBoisson" placeholder="Prix" path="prixg"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idCatBoisson" class="col-sm-2 control-label">Categorie</label>
							<div class="col-sm-3" id="idCatBoisson">
								<form:select path="categorie">
									<form:option value="Bierres pression" />
									<form:option value="Bierres bouteille" />
									<form:option value="Aperitifs" />
									<form:option value="Champagne" />
									<form:option value="Whiskies" />
									<form:option value="Bourbons" />
									<form:option value="Rhums" />
									<form:option value="Digestifs" />
									<form:option value="Sans Alcool" />
									<form:option value="Eaux" />
									<form:option value="Boissons Chaudes" />
								</form:select>
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
	<div class="modal fade" id="ModalAjoutBoissons" tabindex="-1"
		role="dialog" aria-labelledby="ModalAjoutBoissons" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalAjoutBoissonsTitle">Ajout
						d'un Vins</h2>
				</div>
				<form:form method="POST" action="submitAddB"
					modelAttribute="boissons" cssClass="form-horizontal">

					<div class="modal-body">

						<div class="form-group">
							<label for="idNomBoisson" class="col-sm-2 control-label">Nom</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									id="idNomBoisson" placeholder="Nom" path="nom"
									required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrixPBoisson" class="col-sm-2 control-label">Prix
								25cl</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									placeholder="Prix" path="prixp" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idPrixGBoisson" class="col-sm-2 control-label">Prix
								50cl</label>
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control"
									placeholder="Prix" path="prixg" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label for="idCatBoisson" class="col-sm-2 control-label">Categorie</label>
							<div class="col-sm-3" id="idCatBoisson">
								<form:select path="categorie">
									<form:option value="Bierres pression" />
									<form:option value="Bierres bouteille" />
									<form:option value="Aperitifs" />
									<form:option value="Champagne" />
									<form:option value="Whiskies" />
									<form:option value="Bourbons" />
									<form:option value="Rhums" />
									<form:option value="Digestifs" />
									<form:option value="Sans Alcool" />
									<form:option value="Eaux" />
									<form:option value="Boissons Chaudes" />
								</form:select>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group" style="margin-right: 10px">

							<input type="submit" value="Ajouter" class="btn btn-secondary"
								style="background-color: #c8101e; color: white" />
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Fermer</button>

						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>

</body>

</html>