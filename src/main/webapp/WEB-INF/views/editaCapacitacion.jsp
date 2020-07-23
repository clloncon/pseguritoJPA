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
    <c:set var="cap" value="${model.cap}"></c:set>
    <h1>>Editar Capacitacion</h1>
    
    <form:form action="${pageContext.request.contextPath}/guardarEditCapacitacion" method="post">
            <input type="hidden" name="id_capacitacion" value="${model.cap.getId_capacitacion()}">
            <div class="row">
                <div class="col-3">Fecha y hora:</div>
                <div class="col-3">
                    <input class="form-control" type="text" name="fechayhora" id="datetimepicker"
                        value="${model.cap.getFechayhora()}" />
                </div>
            </div>
            <div class="row">
                <div class="col-3">Tema:</div>
                <div class="col-3">
                    <input class="form-control" type="text" name="tema"
                        value="${model.cap.getTema()}" />
                </div>
            </div>
            <div class="row">
                <div class="col-3">Contenido:</div>
                <div class="col-3">
                    <input class="form-control" type="text" name="contenido"
                        value="${model.cap.getContenido()}" />
                </div>
            </div>
            <div class="row">
                <div class="col-3">Profesional:</div>
                <div class="col-3">
                    <select name="profesional.id_profesional" class="form-control form-control">
                            <c:forEach items="${model.listap}" var="profesional">
                                <option value="${profesional.getId_profesional()}"
                                    ${model.cap.getProfesional().getId_profesional()==profesional.getId_profesional() ? 'selected'
                                    : '' }>${profesional.getNombre()} ${profesional.getApellido()}
                                </option>
                            </c:forEach>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-3">Cliente:</div>
                <div class="col-3">
                    <select name="cliente.id_cliente" class="form-control form-control">
                            <c:forEach items="${model.listac}" var="cliente">
                                <option value="${cliente.getId_cliente()}"
                                    ${model.cap.getCliente().getId_cliente()==cliente.getId_cliente() ? 'selected' : '' }>
                                    ${cliente.getNombreEmpresa()} </option>
                            </c:forEach>
                        </select>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-3"><a href="${pageContext.request.contextPath}/listarCapacitacion">Volver</a></div>
                <div class="col-3"><input class="form-control" type="submit" value="Guardar"></div>
                
            </div>
        </form:form>
</div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="https://trentrichardson.com/examples/timepicker/jquery-ui-timepicker-addon.js"></script>
                <script>
            $(function () {
                $('#datetimepicker').datetimepicker({
                    dateFormat: 'yy-mm-dd',
                     timeFormat: 'HH:mm',
                });
            });
        </script>
</body>
</html>