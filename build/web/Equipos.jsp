<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" crossorigin="anonymous">
    </head>
    <body>
        <div class="d-flex"> 
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=Equipos" method="POST">
                        <div class="form-group" >
                            <label>ID</label>
                            <c:if test="${EquipoEdit.id!=0}">
                                <input  type="text" name="txtId" value="${EquipoEdit.id}" readonly="" class="form-control">
                            </c:if>
                            <c:if test="${EquipoEdit.id==0}">
                                <input  type="text" name="txtId" class="form-control">
                            </c:if>
                            
                        </div>
                        <div class="form-group" >
                            <label>Equipo</label>
                            <input  type="text" name="txtDescripcion" value="${EquipoEdit.descripcion}" class="form-control">
                        </div>
                        <div class="form-group" >
                            <label>Marca</label>
                            <select class="form-control" name="txtMarca">
                                <option value="0">Seleccionar</option>
                                <c:forEach var="m" items="${Marcas}">
                                    <c:if test="${m.id==EquipoEdit.marca.id}">
                                        <option selected="" value="${m.id}">${m.descripcion}</option>
                                    </c:if>                   
                                    <c:if test="${m.id!=EquipoEdit.marca.id}">
                                        <option value="${m.id}">${m.descripcion}</option>
                                    </c:if> 
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group" >
                            <label>Fecha de Alta</label>
                            <input  type="date" name="txtFechaA" value="${EquipoEdit.fechaAlta}" class="form-control">
                        </div>
                        <div class="form-group" >
                            <label>Fecha de Baja</label>
                            <input  type="date" name="txtFechaB" value="${EquipoEdit.fechaBaja}" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info" >
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success" >
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>DESCRIPCION</th>
                            <th>MARCA</th>
                            <th>F.ALTA</th>
                            <th>F.BAJA</th>
                            <th>ESTADO</th>
                            <th>ACCION</th>
                    </thead>
                    <tbody>
                        <c:forEach var="e" items="${Equipos}">
                            <tr>
                                <td>${e.id}</td>
                                <td>${e.descripcion}</td>
                                <td>${e.marca.descripcion}</td>
                                <td>${e.fechaAlta}</td>
                                <td>${e.fechaBaja}</td>
                                <td>
                                    <c:if test="${e.estado==1}">
                                        <a href="Controlador?menu=Equipos&accion=SolicitarPrestamo&idequipo=${e.id}" class="btn btn-success btn-sm">Prestar <i class="fa fa-share-square"></i></a>
                                    </c:if>
                                    <c:if test="${e.estado==2}">
                                        <a href="Controlador?menu=Equipos&accion=VerDetalle&idE=${e.id}" class="btn btn-warning btn-sm">Prestado <i class="fa fa-eye"></i></a>
                                    </c:if>
                                </td>
                                <td>
                                    <c:if test="${e.estado==1}">
                                        <a href="Controlador?menu=Equipos&accion=Eliminar&id=${e.id}" class="btn btn-danger btn-sm"><i class="fa fa-trash-alt"></i></a>
                                        <a href="Controlador?menu=Equipos&accion=Editar&id=${e.id}" class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></a>
                                    </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
