<%@ page language="java" contentType="text/html; charset=ISO-8859-15"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<title>Parad'Iles - Accès non autorisé</title>
<link rel="icon" href="<c:url value="/resources/images/logo.png"/>" />

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

<body>

	<%@ include file="templates/header.html"%>

	<%@ include file="templates/menu.html"%>

	<div class="container">
		<div class="col-sm-3">
			<img src="<c:url value="/resources/images/access-denied.png"/>"
				style="width: 100%; height: 200px" alt="Profil" class="img-rounded">
		</div>
		<div class="col-sm-9">
			<div class="jumbotron">
				<h2 class="text-center">
					Vous n'êtes pas autorisé à entrer <br/>dans cette espace <a
						href="${pageContext.request.contextPath}/offre/accueil"><span
						class="glyphicon glyphicon-home"></span></a>
				</h2>
			</div>
		</div>
	</div>

	<%@ include file="templates/footer.html"%>

</body>

</html>