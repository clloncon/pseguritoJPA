<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Reporte Accidentes</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
    crossorigin="anonymous">
</head>
<body>
    <div class="container">
		<h1 class="display-4">Listado de reporte</h1>
		<br>
		  <p><a class="btn btn-success" href="crearReporteAccidente">Crear Reporte Accidente</a></p>
        <table class="table">
            <thead class="thead_dark">
                <tr>
                        <th>#</th>
                        <th>Fecha</th>
                        <th>Direccion</th>
                        <th>Labor</th>
                        <th>Descripcion</th>
                        <th>Cliente</th>
                </tr>
                  </thead>
            <tbody>
            <c:forEach items="${lista}" var="reporte">
                <tr>
                    <th scope="row"><a href="${pageContext.request.contextPath}/mostrarReporteAccidente/${reporte.getId_reporte()}">${reporte.getId_reporte()}</a></th>
                    <td>${reporte.getFecha()}</td>
                    <td>${reporte.getDireccion()}</td>
                    <td>${reporte.getLabor()}</td>
                    <td>${reporte.getDescripcion()}</td>
                    <td>${reporte.getCliente().getNombreEmpresa()}</td>
                    <td><a class="btn btn-primary" href="${pageContext.request.contextPath}/editarReporteAccidente/${reporte.getId_reporte()}">Editar </a>  <a class="btn btn-danger"  href="${pageContext.request.contextPath}/eliminarReporteAccidente/${reporte.getId_reporte()}">Borrar</a></td>
            </c:forEach>
            </tbody>
          
        </table>
      
    </div>
</body>
</html>