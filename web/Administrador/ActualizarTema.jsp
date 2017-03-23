<%-- 
    Document   : ActualizarTema
    Created on : 23/03/2017, 02:02:47 AM
    Author     : simon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="..\css\style.css" rel="stylesheet" type="text/css">
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
                        <li>  
                            <a href= "indexAdm.jsp">Usuarios<br></a>  
                        </li>  
                        <li  class= "active ">  
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
                    <div class="col-md-12">
                        <div class="page-header">
                            <h1>Actualizar Tema
                                <small>Ingrese datos</small>
                            </h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form class="form-horizontal text-right" role="form" action="../Temas" method="post">
                            <div class="form-group">
                                <div class="col-sm-2">
                                    <label for="id" class="control-label">ID</label>
                                </div>
                                <div class="col-sm-10">
                                    <input name="id" class="form-control" placeholder="ID" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-2">
                                    <label for="nombre" class="control-label">Nombre</label>
                                </div>
                                <div class="col-sm-10">
                                    <input class="form-control" placeholder="Nombre" name="nombre" type="text">
                                </div>
                            </div>                            
                            <input type="text" name="tForm" value="3" hidden="">
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default">Enviar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


    </body>
</html>
