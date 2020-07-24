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
	<c:set var="f" value="${model.f}"></c:set>
	<h1>>Crear Factura</h1>
	
	<form:form action="${pageContext.request.contextPath}/guardarFactura" method="post">
			<div class="row">
				<div class="col-3">Fecha de Cobro:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="fechadecobro" id="datetimepicker"/>
				</div>
			</div>
			<div class="row">
				<div class="col-3">Fecha Vencimiento:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="fechaVencimiento" id="datetimepicker2"/>
				</div>
			</div>
			<div class="row">
			<div class="col-3">Extras:</div>
				<div class="col-3">
					<input class="form-control" type="number" name="extras" max=999999999/>
				</div>
			</div>
			<div class="row">
				<div class="col-3">Impuestos:</div>
				<div class="col-3">
					<input class="form-control" type="number" name="impuestos" value=0 readonly/>
				</div>
			</div>
			<div class="row">
				<div class="col-3">Subtotal:</div>
				<div class="col-3">
					<input class="form-control" type="number" name="subtotal" value=0 readonly/>
				</div>
			</div>
			<div class="row">
				<div class="col-3">Total:</div>
				<div class="col-3">
					<input class="form-control" type="number" name="total" value=0 readonly/>
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
			<br>
			<div class="row">
				<div class="col-3"><a href="${pageContext.request.contextPath}/listarFactura">Ver listado Facturas</a></div>
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