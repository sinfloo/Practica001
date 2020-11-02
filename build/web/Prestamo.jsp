<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Detalle del Prestamo</h5>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <tbody>
                                <tr> 
                                    <th>CODIGO</th>
                                    <th>:</th>
                                    <td>${Prestamo.id}</td>                                    
                                </tr>
                                <tr> 
                                    <th>HORASEQUIPO</th>
                                    <th>:</th>
                                    <td>${Prestamo.horasEquipo}</td>                                    
                                </tr>
                                <tr> 
                                    <th>HORASENTREGA</th>
                                    <th>:</th>
                                    <td>${Prestamo.horasEntrega}</td>                                    
                                </tr>
                                <tr> 
                                    <th>RESPONSABLE</th>
                                    <th>:</th>
                                    <td>${Prestamo.responsable.nombre} ${Prestamo.responsable.apellido}</td>                                    
                                </tr>
                                <tr> 
                                    <th>FECHAENTREGA</th>
                                    <th>:</th>
                                    <td>${Prestamo.fechaentrega}</td>                                    
                                </tr>
                                <tr> 
                                    <th>FECHADEVOLUCION</th>
                                    <th>:</th>
                                    <td>${Prestamo.fechaDevo}</td>                                    
                                </tr>
                                <tr> 
                                    <th>EQUIPO</th>
                                    <th>:</th>
                                    <td>${Prestamo.equipo.descripcion}</td>                                    
                                </tr>                                
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer">
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModalCenter">
                            Devolver Equipo
                        </button>
                        <a href="Controlador?menu=Equipos&accion=Listar">Volver</a>
                    </div>
                </div> 
            </div>
        </div>       

        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <form action="Controlador?menu=Equipos" method="POST">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Devolver Equipo</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group" >
                                <label>INGRESAR HORAS ENTREGA</label>
                                <input type="hidden" name="txtIDP" value="${Prestamo.id}">
                                <input type="hidden" name="txtIDE" value="${Prestamo.equipo.id}">
                                <input  type="text" name="txtHorasE"  class="form-control">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" name="accion" value="DevolverEquipo" class="btn btn-primary">Guardar Cambios</button>
                        </div>
                    </div>
                </form>               
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
