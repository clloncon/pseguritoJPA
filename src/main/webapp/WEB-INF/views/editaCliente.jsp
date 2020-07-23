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
		<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="https://trentrichardson.com/examples/timepicker/jquery-ui-timepicker-addon.css">	
</head>
<body>
<div class="container">
	<c:set var="c" value="${c}"></c:set>
	<h1>>Editar Cliente</h1>
	
	<form:form action="${pageContext.request.contextPath}/guardarEditCliente" method="post">
			<input type="hidden" name="id_cliente" value="${c.getId_cliente()}">
			<div class="row">
				<div class="col-3">Nombre:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="nombreEmpresa"
						value="${c.getNombreEmpresa()}" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Rut:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="rut"
						value="${c.getRut()}" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Fecha Registro:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="fechaRegistro" id="datetimepicker"
						value="${c.getFechaRegistro()}" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-3"><a href="${pageContext.request.contextPath}/listarCliente">Volver</a></div>
				<div class="col-3"><input class="form-control" type="submit" value="Guardar"></div>
				
			</div>
		</form:form>
</div>
			<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="https://trentrichardson.com/examples/timepicker/jquery-ui-timepicker-addon.js"></script>
				<script>
			$(function () {
				$('#datetimepicker').datepicker({
					dateFormat: 'yy-mm-dd',
				});
			});
		</script>
</body>
</html>