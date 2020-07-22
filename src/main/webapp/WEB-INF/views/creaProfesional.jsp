<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Segurito Project</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
</head>
<body>
<div class="container">
	<c:set var="p" value="${p}"></c:set>
	<h1>>Crear Profesional</h1>
	
	<form:form action="${pageContext.request.contextPath}/guardarProfesional" method="post">
			<div class="row">
				<div class="col-3">Nombre:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="nombre" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Apellido:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="apellido"/>
				</div>
			</div>
			<div class="row">
				<div class="col-3">Correo:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="correo"/>
				</div>
			</div>
			<div class="row">
				<div class="col-3">Telefono:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="telefono"/>
				</div>
			</div>
			<div class="row">
				<div class="col-3">Cargo:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="cargo"/>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-3"><a href="${pageContext.request.contextPath}/listarProfesional">Ver listado profesionales</a></div>
				<div class="col-3"><input class="form-control" type="submit" value="Guardar"></div>
				
			</div>
		</form:form>
</div>

</body>
</html>