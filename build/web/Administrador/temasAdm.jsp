<html><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="../css/style.css" rel="stylesheet" type="text/css">
        <link href="css\style.css" rel="stylesheet" type="text/css">
    </head><body>

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
                        <img src="../img/Administrador/paint-board-and-brush.png" class="img-responsive">
                        <hr>
                        <a class="btn btn-block btn-primary" href="AgregarTema.html">Agregar Temas<br></a>
                    </div>
                    <div class="col-md-3">
                        <img src="../img/Administrador/painter-palette.png" class="img-responsive">   
                        <hr>
                        <form action="../Temas" method="post" >
                            <input type="text" value="5" name="tForm" hidden>
                            <input type="submit" value="Ver Temas" class="btn btn-block btn-primary">
                        </form>
                    </div>
                    <div class="col-md-3">
                        <img src="../img/Administrador/theatre-masks.png" class="img-responsive img-rounded">
                        <hr>
                        <a class="btn btn-block btn-primary">Actualizar Temas<br></a>
                    </div>
                    <div class="col-md-3">
                        <img src="../img/Administrador/eraser.png" class="img-responsive">
                        <hr>
                        <a class="btn btn-block btn-primary">Eliminar Temas<br></a>
                    </div>
                </div>
            </div>
        </div></body></html>