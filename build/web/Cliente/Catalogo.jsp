<%@page import="arqSw.Servlet.EstampaServlet"%>
<%@page import="arqSw.Hibernate.Estampa"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head></head>
    <body>
        <title>Catalogo</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="../css/style.css"       rel="stylesheet" type="text/css">
        <link href="css\style.css" rel="stylesheet" type="text/css">
        <div class= "navbar navbar-default navbar-static-top ">  
            <div class= "container ">  
                <div class= "navbar-header ">  
                    <button type= "button " class= "navbar-toggle " data-toggle= "collapse " data-target= "#navbar-ex-collapse ">  
                        <span class= "sr-only ">Toggle navigation</span>  
                        <span class= "icon-bar "></span>  
                        <span class= "icon-bar "></span>  
                        <span class= "icon-bar "></span>  
                    </button>  
                    <a class= "navbar-brand " href= "indexCli.jsp"><span>Cliente</span><br></a>  
                </div>  
                <div class= "collapse navbar-collapse " id= "navbar-ex-collapse ">  
                    <ul class= "nav navbar-nav navbar-right ">  
                        <li class= "active ">  
                            <a href= "indexCli.jsp">Inicio<br></a>  
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
            <c:forEach items="${listaEstampas}" var="estampas" >
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="text-center">${estampas.nombre}</h1>
                            <h2 class="text-center">${estampas.descripcion}</h2>
                            <div class="text-center thumbnail">
                                <img src="img/estampas/Comunicacion/${estampas.imagenes}" class="img-responsive">
                                <div class="caption">
                                    <div class="row">                  
                                        </div>
                                        <div class="col-md-4 text-center">

                                            <p>Artista:<br></p>${artista.usuario}                                                

                                        </div>
                                        <div class="col-md-3 text-center">
                                            <p>Popularidad:<br>${estampas.popularidad}</p>
                                        </div>
                                        <div class="col-md-1 text-center">
                                            <p>Rating:<br>${estampas.rating}</p>
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