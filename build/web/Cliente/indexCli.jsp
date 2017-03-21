<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

    <head>
        <title>Cliente</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
              rel="stylesheet" type="text/css">
        <link href="..\css\style.css" rel="stylesheet" type="text/css">
    </head>

    <body>
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
                        <h1>Heading</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisici eli.</p>
                        <br>
                        <br>
                        <a class="btn btn-lg btn-default">Click me</a>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>