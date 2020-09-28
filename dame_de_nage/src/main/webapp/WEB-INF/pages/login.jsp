<%@ page language="java" contentType="text/html; charset=ISO-8859-15"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- ajout taglib form de spring mvc -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>

<title>Dame de Nage - Page Login</title>
<link rel="icon" href="<c:url value="/resources/images/logo.PNG"/>" />
<script src="resources/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
<script type="text/javascript" src="resources/js/javascript.js"></script>
<!-- ajout de la lib de boostrap css -->
<link rel="stylesheet"
	href='<c:url value="/resources/css/bootstrap.css"/>' />

</head>
<body style="background-color: #c6a664">

	<%@ include file="templates/header.html"%>


	<div class="container">
		<div class="col-sm-3">
			<img src="<c:url value="/resources/images/login.png"/>"
				style="width: 100%; height: 200px" alt="Profil"
				class="img-rounded">
		</div>
		<div class="col-sm-9">
			<div class="jumbotron">

				<h4>Identification</h4>
				<form action="j_spring_security_check" method="post">

					Identifiant(mail) : <input type="text" name="j_username">
					Password: <input type="password" name="j_password"> <input
						type="submit" value="Se connecter">
				</form>
				<br />

				<c:if test="${not empty message_erreur}">
					<h3 style="color: red;">Erreur dans les données de connexion</h3>
				</c:if>
			</div>
		</div>
	</div>

	<%@ include file="templates/footer.html"%>

</body>
</html>