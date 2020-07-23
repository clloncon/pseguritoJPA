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
	<c:set var="as" value="${model.as}"></c:set>
	<h1>>Editar Asesoria</h1>
	
	<form:form action="${pageContext.request.contextPath}/guardarEditAsesoria" method="post">
			<input type="hidden" name="id_asesoria" value="${model.as.getId_asesoria()}">
			<div class="row">
				<div class="col-3">Fecha y hora:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="fechayhora"
						value="${model.as.getFechayhora()}" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Motivo:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="motivo"
						value="${model.as.getMotivo()}" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Detalle:</div>
				<div class="col-3">
					<input class="form-control" type="text" name="detalle"
						value="${model.as.getDetalle()}" />
				</div>
			</div>
			<div class="row">
				<div class="col-3">Profesional:</div>
				<div class="col-3">
					<select name="txt_idprofesional" class="form-control form-control">
							<c:forEach items="${model.listap}" var="profesional">
								<option value="${profesional.getId_profesional()}"
									${model.as.getProfesional().getId_profesional()==profesional.getId_profesional() ? 'selected'
									: '' }>${profesional.getNombre()} ${profesional.getApellido()}
								</option>
							</c:forEach>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-3">Cliente:</div>
				<div class="col-3">
					<select name="txt_idcliente" class="form-control form-control">
							<c:forEach items="${model.listac}" var="cliente">
								<option value="${cliente.getId_cliente()}"
									${model.as.getCliente().getId_cliente()==cliente.getId_cliente() ? 'selected' : '' }>
									${cliente.getNombreEmpresa()} </option>
							</c:forEach>
						</select>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-3"><a href="${pageContext.request.contextPath}/listarAsesoria">Volver</a></div>
				<div class="col-3"><input class="form-control" type="submit" value="Guardar"></div>
				
			</div>
		</form:form>
</div>

</body>
</html>