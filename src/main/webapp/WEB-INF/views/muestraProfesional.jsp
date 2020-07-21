<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
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
	<div class="row">
		<div class="col"><h2>${p.getNombre()} ${p.getApellido()}</h2></div>
	</div>
	<div class="row">
		<div class="col"><h4>${p.getCargo()}</h4></div>
	</div>
	<hr>
	<div class="row">
		<div class="col-3">#</div>
		<div class="col">${p.getId_profesional()}</div>
	</div>
	<div class="row">
		<div class="col-3">Correo:</div>
		<div class="col">${p.getCorreo()}</div>
	</div>
	<div class="row">
		<div class="col-3">Teléfono:</div>
		<div class="col">${p.getTelefono()}</div>
	</div>
	
	<hr>
	<div class="row">
		<a href="${pageContext.request.contextPath}/listarProfesional">Volver</a>
	</div>
</div>

</body>
</html>