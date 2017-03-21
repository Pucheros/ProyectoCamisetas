<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="arqSw.Hibernate.Estampa"%>
<%@page import="java.util.List"%>
<html>

    <head></head>

    <body>
        <title>Artista</title>
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
        <div class="cover">
            <div class="navbar navbar-default">
                <div class="container">
                    <div class="collapse navbar-collapse" id="navbar-ex-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="cover-image"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h1>¡Estámpate!</h1>
                        <p>Bienvenido a Estámpate, aquí encontrarás distintas estampas, que podrás
                            comprar junto con su camiseta.</p>
                        <a class="btn btn-success" href="EstampaServlet">Catalogo</a>
                        <br>
                        <br>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <p class="text-center">Mira nuestras estampas.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>