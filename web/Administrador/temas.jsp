<%@page import="arqSw.Hibernate.Tema"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Catalogo</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="../css/style.css"  rel="stylesheet" type="text/css">
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
                        <li>  
                            <a href= "Administrador/indexAdm.jsp">Usuarios<br></a>  
                        </li>  
                        <li  class= "active ">  
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
            <div class= "container ">  
                <div class= "row ">  
                    <div class= "col-md-12 ">  
                        <div class= "page-header ">  
                            <h1>Temas</h1>  
                        </div>  
                        <table class= "table ">
                            <tr>  
                                <th>ID</th>  
                                <th>Nombre</th>  
                            </tr>
                            <c:forEach items="${listaTemas}" var="temas">
                                <tr>  
                                    <td>${temas.idTema}</td>  
                                    <td>${temas.descripcion}</td>  
                                </tr>
                            </c:forEach>

                        </table>  
                    </div>  
                </div>  
            </div>  
        </div>  
    </body></html>