<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html>

    <head>
        <title>Administrador</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="../css/style.css" rel="stylesheet" type="text/css">
        <link href="css\style.css" rel="stylesheet" type="text/css">
    </head>

    <body>

        <div class= "navbar navbar-default navbar-static-top ">  
            <div class= "container ">  
                <div class= "navbar-header ">  
                    <button type= "button " class= "navbar-toggle " data-toggle= "collapse " data-target= "#navbar-ex-collapse ">  
                        <span class= "sr-only ">Toggle navigation</span>  
                        <span class= "icon-bar "></span>  
                        <span class= "icon-bar "></span>  
                        <span class= "icon-bar "></span>  
                    </button>  
                    <a class= "navbar-brand " href= "# "><span>Administrador</span><br></a>  
                </div>  
                <div class= "collapse navbar-collapse " id= "navbar-ex-collapse ">  
                    <ul class= "nav navbar-nav navbar-right ">  
                        <li class= "active ">  
                            <a href= "indexAdm.jsp">Usuarios<br></a>  
                        </li>  
                        <li>  
                            <a href= "temasAdm.jsp">Temas<br></a>  
                        </li>  
                        <li>  
                            <a href= "../EstampaServlet">Catalogo<br></a>                             
                        </li>  
                        <li>
                            <a href="../setPass.jsp">Cambiar Contraseña</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="../Salir" >Salir</a>
                        </li>
                    </ul>  
                </div>  
            </div>  
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <img src="..\img\Administrador\new-user.png" class="img-responsive">
                        <hr>
                        <a class="btn btn-block btn-primary" href="RegistrarAdministrador.html">Agregar Administrador<br></a>
                    </div>
                    <div class="col-md-3">
                        <img src="..\img\Administrador\forum-user.png" class="img-responsive">
                        <hr>
                        <form action="../Usuarios" method="post">
                            <input type="text" name="tForm" value="1" hidden>
                            <input type="submit" class="btn btn-block btn-primary" value="Ver Usuarios"><br>
                        </form>
                    </div>
                    <div class="col-md-3">
                        <img src="..\img\Administrador\icon.png" class="img-responsive img-rounded">
                        <hr>
                        <a href="PreActualizar.jsp" class="btn btn-block btn-primary">Actualizar Datos de Usuario<br></a>
                    </div>
                    <div class="col-md-3">
                        <img src="..\img\Administrador\delete-contact.png" class="img-responsive">
                        <hr>
                        <a href="Eliminar.jsp" class="btn btn-block btn-primary">Eliminar Usuario<br></a>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>