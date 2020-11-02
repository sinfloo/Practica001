
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <a class="navbar-brand" href="">Gestion Equipo</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a style= "margin-left: 10px; border:none;" class="btn btn-outline-light" target="myFrame" href="Controlador?menu=Equipos&accion=Listar">Reportes</a>
<!--                        <ul class="navbar-nav mr-auto">
                            <li >
                                <a style= "margin-left: 10px; border:none;" >Equipos </a>
                            </li>
                        </ul>-->
                    </li>
                    <li class="nav-item">
                        <a style= "margin-left: 10px; border:none;" class="btn btn-outline-light" href="Controlador?menu=Profesion" target="myFrame">Profesion</a>
                    </li>
                    <li class="nav-item">
                        <a style= "margin-left: 10px; border:none;" class="btn btn-outline-light" href="Controlador?menu=Rol&accion=Listar" target="myFrame">Rol</a>
                    </li>
                    <li class="nav-item">
                        <a style= "margin-left: 10px; border:none;"  class="btn btn-outline-light" href="Controlador?menu=Departamento&accion=Listar" target="myFrame">Departamento</a>
                    </li>
                    <li class="nav-item">
                        <a style= "margin-left: 10px; border:none;"  class="btn btn-outline-light" href="Controlador?menu=Marca&accion=Listar" target="myFrame">Marca</a>
                    </li>
                    <li class="nav-item">
                        <a style= "margin-left: 10px; border:none;"  class="btn btn-outline-light" href="Controlador?menu=Usuario&accion=Listar" target="myFrame">User</a>
                    </li>
                    <li class="nav-item">
                        <a style= "margin-left: 10px; border:none;"  class="btn btn-outline-light" href="Controlador?menu=Prestamo&accion=Listar" target="myFrame">Prestamo </a>
                    </li>

                </ul>
                <div class="dropdown">
                    <button  style="border:none;" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        ${usuario.getNombre()}
                    </button>
                    <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">${usuario.getIdusuario()}</a>
                        <a class="dropdown-item" href="#">${email.getEmail()}</a>
                        <div class="dropdown-divider"></div>
                        <form action="Validar" method="post">
                            <a name="action" value="Salir" class="dropdown-item" href="#">Salir</a>
                        </form>

                    </div>
                </div>
                <!--
              <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
              </form> -->
            </div>
        </nav>
        <div class="m-4" style="height: 550px;"> 
            <iframe name="myFrame" style="height: 100%; width:100%; border: none"></iframe>
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>

</html>
