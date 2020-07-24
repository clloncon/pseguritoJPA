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
        <h1>Lista de Reporte Accidentes</h1>

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
            <tbody>
            <c:forEach items="${lista}" var="reporte">
                <tr>
                    <th scope="row"><a href="${pageContext.request.contextPath}/mostrarReporteAccidente/${act.getIdreporteaccidente()}">${act.getIdreporteaccidente()}</a></th>
                    <td>${reporte.getFecha()}</td>
                    <td>${reporte.getDireccion()}</td>
                    <td>${reporte.getLabor()}</td>
                    <td>${reporte.getDescripcion()}</td>
                    <td>${reporte.getCliente().getNombreEmpresa()}</td>
                    <td><a href="${pageContext.request.contextPath}/editarReporteAccidente/${act.getIdreporteaccidente()}">Editar </a>| <a href="${pageContext.request.contextPath}/eliminarReporteAccidente/${act.getIdreporteaccidente()}">Borrar</a></td>
            </c:forEach>
            </tbody>
            </thead>
        </table>
        <p><a href="crearReporteAccidente">Crear Reporte Accidente</a></p>
    </div>
</body>
</html>