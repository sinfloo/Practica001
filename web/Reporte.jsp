<%-- 
    Document   : Reporte
    Created on : 13/10/2020, 11:53:36 AM
    Author     : Athena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
    </head>
    <body>
        <div class="d-flex"> 
            <div class="card col-sm-3">
                <div class="card-body">
                    <form action="Controlador?menu=Usuario" method="post">
                        <div class="form-group" >
                            <label>Usuario</label>
                            <input  type="number" name="txtusuario" class="form-control" required="true">
                        </div>
                              <div class="form-group" >
                            <label>Password</label>
                            <input  type="text" name="txtpassword" class="form-control">
                        </div>
                            <div class="form-group" >
                            <label>Nombre</label>
                            <input  type="text" name="txtnombre" class="form-control">
                        </div>
                        <div class="form-group" >
                            <label>Apellido</label>
                            <input  type="text" name="txtapellido" class="form-control">
                        </div>
                            <div class="form-group" >
                            <label>Profesion</label>
                            <input  type="number" name="txtprofesion" class="form-control">
                        </div>
                        <div class="form-group" >
                            <label>Rol</label>
                            <input  type="number" name="txtrol"  class="form-control">
                        </div>
                                                <div class="form-group" >
                            <label>Email</label>
                            <input  type="email" name="txtemail" class="form-control">
                        </div>
                                                <div class="form-group" >
                            <label>Departamento</label>
                            <input  type="number" name="txtdep" class="form-control">
                        </div>
                                                <div class="form-group" >
                            <label>Fecha Ingreso</label>
                            <input  type="date" name="txtfechai" class="form-control">
                        </div>
                                                <div class="form-group" >
                            <label>Fecha Cese</label>
                            <input  type="date" name="txtfechac" class="form-control">
                        </div>
                         
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info" >
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Usuario</th>
                            <th>Password</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Profesion</th>
                            <th>Rol</th>
                            <th>Email</th>
                            <th>Departamento</th>
                            <th>Fecha Ingreso</th>
                            <th>Fecha Cese</th>
                    </thead>
                    <tbody>
                      <c:forEach var="em" items="${empleados}"> 
                        <tr>
                            <td>${em.getIdusuario()}</td>
                            <td>${em.getPassword()}</td>
                            <td>${em.getNombre()}</td>
                            <td>${em.getApellido()}</td>
                            <td>${em.getProfesion()}</td>
                            <td>${em.getRol()}</td>
                            <td>${em.getDepartamento()}</td>
                            <td>${em.getEmail()}</td>
                            <td>${em.getFechaingreso()}</td>
                            <td>${em.getFechacese()}</td>
                            
                            <td>
                                <a>Editar</a>
                                 <a>Delete</a>
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
