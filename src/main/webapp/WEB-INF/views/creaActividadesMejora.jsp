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
	<c:set var="ac" value="${model.ac}"></c:set>
	<h1>>Crear Actividad de mejora</h1>
	
	<form:form action="${pageContext.request.contextPath}/guardarActividadesMejora" method="post">
			<div class="row">
				<div class="col-3">Nombre:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="nombre" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Fecha Inicio:</div>
				<div class="col-3">
					<input class="form-control" type="date" name="fechaInicio" id="datetimepicker"/>
				</div>
			</div>
			<div class="row">
				<div class="col-3">Fecha Termino:</div>
				<div class="col-3">
					<input class="form-control" type="date" name="fechaTermino" id="datetimepicker2"/>
				</div>
			</div>
			<div class="row">
				<div class="col-3">Estado:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="estado"/>
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
					<select name="profesional.id_profesional" class="form-control form-control">
								<c:forEach items="${model.listap}" var="profesional">
									<option value="${profesional.getId_profesional()}">${profesional.getNombre()}
										${profesional.getApellido()} </option>
								</c:forEach>
							</select>
				</div>
			</div>
			<div class="row">
				<div class="col-3">Cliente:</div>
				<div class="col-3">
					<select name="cliente.id_cliente" class="form-control form-control">
								<c:forEach items="${model.listac}" var="cliente">
									<option value="${cliente.getId_cliente()}">${cliente.getNombreEmpresa()} </option>
								</c:forEach>
							</select>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-3"><a href="${pageContext.request.contextPath}/listarActividadesMejora">Ver listado Actividades</a></div>
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
			$(function () {
				$('#datetimepicker2').datepicker({
					dateFormat: 'yy-mm-dd',
				});
			});
		</script>
</body>
</html>