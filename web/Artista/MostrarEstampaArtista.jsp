<%-- 
    Document   : MostrarEstampa
    Created on : 26/03/2017, 12:40:57 AM
    Author     : anlum
--%>



<%@page import="arqSw.DAO.TemaDAO"%>
<%@page import="arqSw.Hibernate.Tema"%>
<%@page import="arqSw.DAO.ArtistaDAO"%>
<%@page import="arqSw.Hibernate.Artista"%>
<%@page import="arqSw.Hibernate.Estampa"%>
<%@page import="java.util.List"%>
<%@page import="arqSw.DAO.EstampaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head> </head>
    <body>
        <title>Mostrar Estampas</title>           
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="../css/style.css" rel="stylesheet" type="text/css">
        <link href="css\style.css" rel="stylesheet" type="text/css">

        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-right">
                        <div class="btn-group btn-group-lg">
                            <a class="btn btn-success dropdown-toggle" data-toggle="dropdown"> Opciones <span class="fa fa-caret-down"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li>
                                    <a href="../setPass.jsp" class="active btn btn-lg btn-default" data-toggle="modal">Cambiar ContraseÃ±a</a>
                                </li>
                                <li class="divider"></li>
                                <li >
                                    <a href="RegistrarEstampa.jsp">Registrar Estampas</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="MostrarEstampaArtista.jsp">Mostrar Estampas</a>
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
            <div class="container">
                <div class="row"><% %>
                    <div class="col-md-12"> 

                        <%
                            EstampaDAO estDAO = new EstampaDAO();
                            List<Estampa> estL = estDAO.obtenListaEstampas();
                            session = request.getSession();
                            int idArtistaSesion = Integer.parseInt(session.getAttribute("id").toString());
                            for (int i = 0; i < estL.size(); i++) {

                                Artista a = estL.get(i).getArtista();
                                int idArtista1 = a.getIdArtista();
                                ArtistaDAO artDAO = new ArtistaDAO();
                                Artista artista = artDAO.obtenArtista(idArtista1);
                                //int idArtista2=artista.getIdArtista();

                                if (idArtistaSesion == idArtista1) {
                                    Integer idEst = estL.get(i).getIdEstampa();
                                    String nombreEst = estL.get(i).getNombre();
                                    String descripcionEst = estL.get(i).getDescripcion();
                                    String rating = estL.get(i).getRating();
                                    String popularidad = estL.get(i).getPopularidad();
                                    String imagen = estL.get(i).getImagenes();

                                    Tema t = estL.get(i).getTema();
                                    int idTema1 = t.getIdTema();
                                    TemaDAO temDAO = new TemaDAO();
                                    Tema tema = temDAO.obtenTema(idTema1);
                                    String descripTema = tema.getDescripcion();

                                    String src = "img/estampas/" + descripTema + "/" + imagen;

                                    out.println("<div class=\"text-center thumbnail\">\n"
                                            + "<form action=\"EditarEliminarEstampa.jsp\" method=\"post\" > <br>\n"
                                            + "<input type=\"text\" name=\"idEst\" value=\""+idEst+"\" hidden>\n"
                                            
                                            + "<label for=\"inputNombreEst\" class=\"control-label\">Nombre:" + nombreEst + "</label> <br>\n"
                                            + "<input type=\"text\" name=\"NombreEst-"+idEst+"\" value=\""+nombreEst+"\" hidden>\n"
                                            
                                            + "<img src=\"" + src + "\" class=\"img-responsive\">\n"
                                            + "<input type=\"text\" name=\"Img-"+idEst+"\" value=\""+src+"\" hidden>\n"                                                                                       
                                            
                                            + "<label for=\"inputDescripcionEst\" class=\"control-label\">Descripcion:" + descripcionEst + "</label><br>\n"
                                            + "<input type=\"text\" name=\"DescripcionEst"+idEst+"\" value=\""+descripcionEst+"\" hidden>\n"
                                            
                                            + "<label for=\"inputTema\" class=\"control-label\">Tema:" + descripTema + "</label><br>\n"
                                            + "<input type=\"text\" name=\"TemaEst"+idEst+"\" value=\""+idTema1+"\" hidden>\n"
                                            
                                            + "<label for=\"ratingEst\" class=\"control-label\">Rating:" + rating + "</label><br>\n"
                                            + "<input type=\"text\" name=\"RatingEst"+idEst+"\" value=\""+rating+"\" hidden>\n"
                                            
                                            + "<label for=\"popularidadEst\" class=\"control-label\">Popularidad:" + popularidad + "</label><br>\n"
                                            + "<input type=\"text\" name=\"PopularidadEst"+idEst+"\" value=\""+popularidad+"\" hidden>\n"
                                            
                                            + "<button type=\"submit\" class=\"btn btn-default\">Hacer Cambios</button><br>\n"
                                            + "</form>\n"
                                            + "</div>\n"
                                            + "");
                                }
                            }
                        %>

                    </div>
                </div>
            </div>
        </div> 
    </body>
</html>
