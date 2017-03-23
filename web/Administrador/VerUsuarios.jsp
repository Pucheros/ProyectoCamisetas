<%@page import="arqSw.Servlet.EstampaServlet"%>
<%@page import="arqSw.Servlet.Usuarios"%>
<%@page import="arqSw.Hibernate.Estampa"%>
<%@page import="arqSw.Hibernate.Cliente"%>
<%@page import="arqSw.Hibernate.Artista"%>
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
                    <a class= "navbar-brand " href= "# "><span>Administrador</span><br></a>  
                </div>  
                <div class= "collapse navbar-collapse " id= "navbar-ex-collapse ">  
                    <ul class= "nav navbar-nav navbar-right ">  
                        <li class= "active ">  
                            <a href= "Administrador/indexAdm.jsp">Usuarios<br></a>  
                        </li>  
                        <li>  
                            <a href= "Administrador/temasAdm.jsp">Temas<br></a>  
                        </li>  
                        <li>  
                            <a href= "EstampaServlet">Catalogo<br></a>                             
                        </li>  
                        <li>
                            <a href="setPass.jsp">Cambiar Contraseña</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="Salir" >Salir</a>
                        </li>
                    </ul>  
                </div>  
            </div>  
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1 class="text-center">Clientes</h1>
                        <c:forEach items="${listaClientes}" var="clientes" >
                            <blockquote>
                                <p>Nombre: ${clientes.usuario}</p>
                                <footer>ID: ${clientes.idCliente}</footer>
                                <footer>Ubicación: ${clientes.ubicacion}</footer>
                                <footer>Forma de pago: ${clientes.formaPago}</footer>
                            </blockquote>
                        </c:forEach>
                    </div>
                    <div class="col-md-6">
                        <h1 class="text-center">Artistas</h1>
                        <c:forEach items="${listaArtistas}" var="artistas" >
                            <blockquote>
                                <p>Nombre: ${artistas.usuario}</p>
                                <footer>ID:${artistas.idArtista}</footer>
                                <footer>Estampas:</footer>
                            </blockquote>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>
