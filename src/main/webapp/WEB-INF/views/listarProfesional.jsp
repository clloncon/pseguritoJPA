<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Profesional</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Lista de Profesional</h1>

		<table class="table">
			<thead class="thead_dark">
				<tr>
					    <th>#</th>
					    <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Correo</th>
                        <th>Telefono</th>
                        <th>Cargo</th>
				</tr>
			<tbody>
			<c:forEach items="${lista}" var="prof">
				<tr>
					<th scope="row"><a href="${pageContext.request.contextPath}/mostrarProfesional/${prof.getId_profesional()}">${prof.getId_profesional()}</a></th>
					<td>${prof.getNombre()}</td>
					<td>${prof.getApellido()}</td>
					<td>${prof.getCorreo()}</td>
					<td>${prof.getTelefono()}</td>
					<td>${prof.getCargo()}</td>
					<td><a href="${pageContext.request.contextPath}/editarProfesional/${prof.getId_profesional()}">Editar </a>| <a href="${pageContext.request.contextPath}/eliminarProfesional/${prof.getId_profesional()}">Borrar</a></td>
			</c:forEach>
			</tbody>
			</thead>
		</table>
		<p><a href="crearProfesional">Crear profesional</a></p>
	</div>
</body>
</html>