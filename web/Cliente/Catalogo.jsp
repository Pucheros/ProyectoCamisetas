<%@page import="arqSw.Hibernate.Estampa"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head></head>
    <body>
        <title>Catalogo</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="../css/style.css"
              rel="stylesheet" type="text/css">
        <link href="css\style.css" rel="stylesheet" type="text/css">
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-right">
                        <div class="btn-group btn-group-lg">
                            <a class="btn btn-success dropdown-toggle" data-toggle="dropdown"> Opciones <span class="fa fa-caret-down"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li>
                                    <a href="../setPass.jsp" class="active btn btn-lg btn-default" data-toggle="modal">Cambiar Contraseña</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="../Salir" class="active btn btn-lg btn-danger" data-toggle="modal">Salir</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <c:forEach items="${estP}" var="resultado">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="text-center">${resultado.nombre}</h1>
                            <h2 class="text-center">${resultado.descripcion}</h2>
                            <div class="text-center thumbnail">
                                <img src="img/estampas/Comunicacion/${resultado.imagenes}" class="img-responsive">
                                <div class="caption">
                                    <div class="row">
                                        <div class="col-md-4 text-center">
                                            <p>Tema:<br></p>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <p>Artista:<br></p>
                                        </div>
                                        <div class="col-md-3 text-center">
                                            <p>Popularidad:<br>${resultado.popularidad}</p>
                                        </div>
                                        <div class="col-md-1 text-center">
                                            <p>Rating:<br>${resultado.rating}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </body>

</html>
