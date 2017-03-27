<%-- 
    Document   : EditarEliminarEstampa
    Created on : 26/03/2017, 06:38:04 PM
    Author     : anlum
--%>

<%@page import="arqSw.Hibernate.Estampa"%>
<%@page import="java.util.List"%>
<%@page import="arqSw.DAO.TemaDAO"%>
<%@page import="arqSw.Hibernate.Tema"%>
<%@page import="arqSw.DAO.ArtistaDAO"%>
<%@page import="arqSw.Hibernate.Artista"%>
<%@page import="arqSw.DAO.EstampaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> </head> 
    <body> 
        <title>Cambios a Estampa</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="..\css\style.css" rel="stylesheet" type="text/css">                
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="page-header">                                                        
                            <small>Selecciona si desea editar o eliminar la estampa</small>                                                            
                        </div>
                    </div>
                </div>
            </div>
        </div>        
        <%
            String idEst = request.getParameter("idEst");
            String nombreEst = request.getParameter("NombreEst-" + idEst);
            String img = request.getParameter("Img-" + idEst);
            String descripcionEst = request.getParameter("DescripcionEst" + idEst);
            int idTema = Integer.parseInt(request.getParameter("TemaEst" + idEst));
            String ratingEst = request.getParameter("Rating" + idEst);
            String Popularidad = request.getParameter("Popularidad" + idEst);
            String src = request.getParameter("Img-" + idEst);
            TemaDAO temDAO = new TemaDAO();
            Tema tema = temDAO.obtenTema(idTema);
            String descripTema = tema.getDescripcion();

               // String src = "../img/estampas/" + descripTema + "/" + img;
            out.println("<form action=\"../AdministrarEstampa\" method=\"post\" > <br>\n"
                    + "<input type=\"text\" name=\"idEst\" value=\"" + idEst + "\" hidden>\n"
                    + "<select name=\"admEst\" class=\"form-control\">\n"
                    + "<option value=\"2\" selected> Actualizar </option>\n"
                    + "<option value=\"3\"> Eliminar </option>\n"
                    + "<div class=\"text-center thumbnail\">"
                    + " <label for=\"inputNombreEst\" class=\"control-label\">Nombre:</label>\n"
                    + " <input type=\"text\" class=\"form-control\" name=\"nombreEst\" value=\"" + nombreEst + " \" >\n"
                    + " <input type=\"file\" class=\"form-control\" name=\"FileEst\" value=\"" + img + " \" >\n"
                    + "<img src=\"" + src + "\" class=\"img-responsive\">\n"
                    + "<label for=\"inputDescripcionEst\" class=\"control-label\">Descripcion:</label>\n"
                    + "<input type=\"text\" class=\"form-control\" name=\"descripcionEst\" value=\"" + descripcionEst + " \" >\n"
                    + "<label for=\"inputTema\" class=\"control-label\">Tema</label>\n"
                    + "<select name=\"temaEst\" class=\"form-control\">\n");

            List<Tema> temL = temDAO.obtenListaTemas();

            for (int j = 0; j < temL.size(); j++) {
                Integer idTem = temL.get(j).getIdTema();
                String descriTemaOption = temL.get(j).getDescripcion();
                if (idTem == idTema) {
                    out.println("<option value=" + idTem + " selected> " + descriTemaOption + " </option>");
                } else {
                    out.println("<option value=" + idTem + "> " + descriTemaOption + " </option>");
                }
            }
            out.println("</select>\n"
                    + "<button type=\"submit\" class=\"btn btn-default\">Hecho</button><br>\n"
                    + "</form>\n"
                    + " </div>\n");
        %>
    </body>
</html>
