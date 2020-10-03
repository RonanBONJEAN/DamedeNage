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

	<%@ include file="templates/menuAdmin.html"%>
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
					<div class="carousel-inner" style="height: 550px">

						<div class="item active">
							<a
								style="color: black" data-toggle="modal"
								href="#ModalImagesSlider1" onclick="setIdSlider1()"><input id="pathSlider1"
								value="${cropSlider1.path}" type="hidden"><img style="width: 100%; height: 480px; border-radius: 10px"
								src="${imageSlider1.path}" /></a>
						</div>

						<div class="item">

							 <a
								style="color: black" data-toggle="modal"
								href="#ModalImagesSlider2" onclick="setIdSlider2()"><input id="pathSlider2"
								value="${cropSlider2.path}" type="hidden"><img style="width: 100%; height: 480px; border-radius: 10px"
								src="${imageSlider2.path}" /></a>

						</div>

						<div class="item">
							 <a
								style="color: black" data-toggle="modal"
								href="#ModalImagesSlider3" onclick="setIdSlider3()"><input id="pathSlider3"
								value="${cropSlider3.path}" type="hidden"><img style="width: 100%; height: 480px; border-radius: 10px"
								src="${imageSlider3.path}" /></a>
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
			<div class="col-sm-5"
				style="max-height: 500px; min-height: 400px; border-radius: 10px">
				<div
					style="background-color: RGB(200, 16, 30); text-align: center; border-style: inset; border-color: black; border-top-left-radius: 10px; border-top-right-radius: 10px; border-bottom: none">
					<h2 style="margin-bottom: -15px; vertical-align: middle">Qu'est-ce
						qu'une Dame de Nage?</h2>
					<br />
				</div>
				<div
					style="background-color: white; border-style: inset; border-color: black; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px; border-top: none">
					<br />
					<h4 style="margin: 15px; margin-bottom: 15px">Sur une
						embarcation à rames, la dame de nage est un objet servant à fixer
						une rame.Durant le mouvement du rameur, elle joue le rôle de pivot
						et transfère à l'embarcation la réaction créée par le coupde rame.
						Les dames de nagesont généralement en forme de U fermés à leur
						extrémité supérieure par une barrette mobile.</h4>

					
					<a style="color: black" data-toggle="modal"
						href="#ModalImagesArticle1" onclick="setIdArticle1()"><input id="pathArticle1"
						value="${cropArticle1.path}" type="hidden"><img style="width: 43%; position: relative; left: 5px"
						src="${imageArticle1.path}"></a> 
					<a style="color: black" data-toggle="modal"
						href="#ModalImagesArticle2" onclick="setIdArticle2()"><input id="pathArticle2"
						value="${cropArticle2.path}" type="hidden"><img
						style="width: 53%; position: relative; left: 10px"
						src="${imageArticle2.path}"></a> <br />
				</div>
			</div>
		</div>
	</div>
	<!-- Modal Images S1 -->
	<div class="modal fade" id="ModalImagesSlider1" tabindex="-1"
		role="dialog" aria-labelledby="ModalImagesSlider1" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalImagesSlider1Title">Formulaire
						de modification</h2>

				</div>

				<form:form method="POST" action="submitUpDateI"
					modelAttribute="imageSlider1" cssClass="form-horizontal">
					<div class="modal-body">

						<div class="form-group" style="display: none">
							<div class="col-sm-3">
								<form:input type="number" cssClass="form-control" value="1"
									path="id" required="required" />
							</div>
						</div>
						<div class="form-group" style="display: none">
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" value="Slider1"
									path="name" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Image n°1 du Slider</label>
							<div class="col-sm-10">
								<form:input type="text" cssClass="form-control" path="path"
									required="required" id="idPathSlider1" />
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
	<!-- Modal Images S2 -->
	<div class="modal fade" id="ModalImagesSlider2" tabindex="-1"
		role="dialog" aria-labelledby="ModalImagesSlider2" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalImagesSlider2Title">Formulaire
						de modification</h2>

				</div>

				<form:form method="POST" action="submitUpDateI"
					modelAttribute="imageSlider2" cssClass="form-horizontal">
					<div class="modal-body">
						<div class="form-group" style="display: none">
							<div class="col-sm-3">
								<form:input type="number" cssClass="form-control" value="2"
									path="id" required="required" />
							</div>
						</div>
						<div class="form-group" style="display: none">
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" value="Slider2"
									path="name" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Image n°2 du Slider</label>
							<div class="col-sm-10">
								<form:input type="text" cssClass="form-control" path="path"
									required="required" id="idPathSlider2" />
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
	<!-- Modal Images S3 -->
	<div class="modal fade" id="ModalImagesSlider3" tabindex="-1"
		role="dialog" aria-labelledby="ModalImagesSlider3" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalImagesSlider3Title">Formulaire
						de modification</h2>

				</div>

				<form:form method="POST" action="submitUpDateI"
					modelAttribute="imageSlider3" cssClass="form-horizontal">
					<div class="modal-body">
						<div class="form-group" style="display: none">
							<div class="col-sm-3">
								<form:input type="number" cssClass="form-control" value="3"
									path="id" required="required" />
							</div>
						</div>
						<div class="form-group" style="display: none">
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" value="Slider3"
									path="name" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Image n°3 du Slider</label>
							<div class="col-sm-10">
								<form:input type="text" cssClass="form-control" path="path"
									required="required" id="idPathSlider3" />
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
	<!-- Modal Images A1 -->
	<div class="modal fade" id="ModalImagesArticle1" tabindex="-1"
		role="dialog" aria-labelledby="ModalImagesArticle1" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalImagesArticle1Title">Formulaire
						de modification</h2>

				</div>

				<form:form method="POST" action="submitUpDateI"
					modelAttribute="imageArticle1" cssClass="form-horizontal">
					<div class="modal-body">
						<div class="form-group" style="display: none">
							<div class="col-sm-3">
								<form:input type="number" cssClass="form-control" value="4"
									path="id" required="required" />
							</div>
						</div>
						<div class="form-group" style="display: none">
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" value="Article1"
									path="name" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Image n°1 de
								l'article</label>
							<div class="col-sm-10">
								<form:input type="text" cssClass="form-control" path="path"
									required="required" id="idPathArticle1" />
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
	<!-- Modal Images A2 -->
	<div class="modal fade" id="ModalImagesArticle2" tabindex="-1"
		role="dialog" aria-labelledby="ModalImagesArticle2" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h2 class="modal-title" id="ModalImagesArticle2Title">Formulaire
						de modification</h2>

				</div>

				<form:form method="POST" action="submitUpDateI"
					modelAttribute="imageArticle2" cssClass="form-horizontal">
					<div class="modal-body">
						<div class="form-group" style="display: none">
							<div class="col-sm-3">
								<form:input type="number" cssClass="form-control" value="5"
									path="id" required="required" />
							</div>
						</div>
						<div class="form-group" style="display: none">
							<div class="col-sm-3">
								<form:input type="text" cssClass="form-control" value="Article2"
									path="name" required="required" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Image n°2 de
								l'article</label>
							<div class="col-sm-10">
								<form:input type="text" cssClass="form-control" path="path"
									required="required" id="idPathArticle2" />
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
	<script type="text/javascript">
function setIdSlider1() {
	var path=document.getElementById("pathSlider1").value;
	document.getElementById("idPathSlider1").value=path;
}
function setIdSlider2() {
	var path=document.getElementById("pathSlider2").value;
	document.getElementById("idPathSlider2").value=path;
}
function setIdSlider3() {
	var path=document.getElementById("pathSlider3").value;
	document.getElementById("idPathSlider3").value=path;
}
function setIdArticle1() {
	var path=document.getElementById("pathArticle1").value;
	document.getElementById("idPathArticle1").value=path;
}
function setIdArticle2() {
	var path=document.getElementById("pathArticle2").value;
	document.getElementById("idPathArticle2").value=path;
}
</script>
	<%@ include file="templates/footer.html"%>
</body>
</html>