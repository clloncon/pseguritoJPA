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
	<c:set var="as" value="${as}"></c:set>
	<h1>>Crear Asesoria</h1>
	
	<form:form action="${pageContext.request.contextPath}/guardarAsesoria" method="post">
			<div class="row">
				<div class="col-3">Fecha y hora:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="fechayhora" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Motivo:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="motivo"/>
				</div>
			</div>
			<div class="row">
				<div class="col-3">Detalle:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="detalle"/>
				</div>
			</div>
			<div class="row">
				<div class="col-3">Profesional:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="profesional"/>
				</div>
			</div>
			<div class="row">
				<div class="col-3">Cliente:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="cliente"/>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-3"><a href="${pageContext.request.contextPath}/listarAsesoria">Ver listado Asesoria</a></div>
				<div class="col-3"><input class="form-control" type="submit" value="Guardar"></div>
				
			</div>
		</form:form>
</div>

</body>
</html>