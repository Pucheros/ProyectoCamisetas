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
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h1>¡Estámpate!</h1>
                        <p>Bienvenido a Estámpate, aquí encontrarás distintas estampas, que podrás
                            comprar junto con tu camiseta.</p>                        
                    </div>
                </div>
                <div class="row">
                    <div class="text-center" class="col-md-12">
                        <p>Mira nuestras estampas.</p>
                        <form action="../EstampaServlet" method="post" >
                            <input type="submit" value="Catálogo" class="btn btn-success">
                        </form>
                    </div>
                    
                </div>
                
            </div>
        </div>       
    </body>

</html>