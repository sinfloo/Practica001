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
        <div class="container col-sm-4">
            <div class="card">
                <div class="card-header">
                    <h5>Modulo de Préstamo</h5>
                </div>
                <div class="card-body">
                    <form action="Controlador?menu=Equipos" method="POST">
                        <div class="form-group" >
                            <label>EQUIPO</label>
                            <input  type="hidden" name="txtIDE" value="${Equipo.id}" readonly="" class="form-control">
                            <input  type="text" name="txtName" value="${Equipo.descripcion}" readonly="" class="form-control">
                        </div>
                        <div class="form-group" >
                            <label>HORAS EQUIPO</label>
                            <input  type="text" name="txtHoras" value="${Equipo.horasPrestamo}" readonly="" class="form-control">
                        </div>
                        <div class="form-group" >
                            <label>IDUSUARIO</label>
                            <input  type="text" name="txtIdUser" class="form-control">
                        </div>
                        <div class="form-group" >
                            <label>Fecha de Devolucion</label>
                            <input  type="date" name="txtFechaDev"  class="form-control">
                        </div>                        
                        <button type="submit" name="accion" value="Prestar" class="btn btn-success" >Realizar Préstamo</button>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
