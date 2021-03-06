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
    <c:set var="rep" value="${model.rep}"></c:set>
<h1 class="display-4">Agregar Reporte</h1>
		<hr>
		
	
    
    <form:form action="${pageContext.request.contextPath}/guardarReporteAccidente" method="post">
            <div class="row">
                <div class="col-3">Fecha:</div>
                <div class="col-7">
                    <input class="form-control" type="text" name="fecha" id="datetimepicker" />
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-3">Direccion:</div>
                <div class="col-7">
                    <input class="form-control" type="text" name="direccion"/>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-3">Labor:</div>
                <div class="col-7">
                    <input class="form-control" type="text" name="labor"/>
                </div>
            </div>
            <hr>
             <div class="row">
                <div class="col-3">Descripcion:</div>
                <div class="col-7">
                    <input class="form-control" type="text" name="descripcion"/>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-3">Cliente:</div>
                <div class="col-7">
                    <select name="cliente.id_cliente" class="form-control form-control">
                                <c:forEach items="${model.listac}" var="cliente">
                                    <option value="${cliente.getId_cliente()}">${cliente.getNombreEmpresa()} </option>
                                </c:forEach>
                            </select>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-1"><a class="btn btn-secondary"  href="${pageContext.request.contextPath}/listarReporteAccidente">Listado</a></div>
                <div class="col-1"><input class="btn btn-success" type="submit" value="Guardar"></div>
                
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