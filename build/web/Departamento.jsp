<%-- 
    Document   : Departamento
    Created on : 30/09/2020, 05:57:16 PM
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
        <div class="card col-sm-4">
            <div class="card-body">
                <form > 
            <div class="form-group" >
                <label>Codigo Departamento</label>
                <input  type="text" name="coddepa" class="form-control">
        </div>
                     <div class="form-group" >
                <label>Departemento</label>
                <input  type="text" name="txtdepa"  class="form-control">
        </div>
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info" >
                </form>
        </div>
        </div>
        <div class="col-sm-8">
            <table class="table table-hover">
                
                <thead>
                    <tr>
                        <th>Cod Departmento</th>
                        <th>Departamento</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            
            
        </div>
        </div>
        
        
         <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
</html>
