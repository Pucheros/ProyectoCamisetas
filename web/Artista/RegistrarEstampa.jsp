<%@page import="arqSw.DAO.TemaDAO"%>
<%@page import="arqSw.Hibernate.Tema"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head></head>
    <body>
        <title>Registro de Estampas</title>
        <meta charset="utf-8">
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
                            <h1>Crear Estampa
                                <small>Ingrese datos de la estampa</small>
                            </h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form class="form-horizontal" method="post" action="../AdministrarEstampa" role="form" enctype="multipart/form-data>
                              <div class="form-group">
                              <div class="col-sm-2">
                                <label for="inputNombreEst" class="control-label">Nombre</label>
                            </div>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="nombreEst" placeholder="Nombre de Estampa">
                            </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-2">
                            <label for="inputDescripcionEst" class="control-label">Descripcion</label>
                        </div>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="descripcionEst" placeholder="Descripcion de Estampa">
                        </div>
                    </div>      
                    <div class="col-sm-2">
                        <label for="inputTema" class="control-label">Tema</label>
                    </div>                       
                    <div class="col-sm-10">
                        <select name="temaEst" class="form-control">    
                            <%
                                TemaDAO tem = new TemaDAO();
                                List<Tema> temL = tem.obtenListaTemas();

                                for (int i = 0; i < temL.size(); i++) {
                                    Integer idTema = temL.get(i).getIdTema();
                                    String descripcionTema = temL.get(i).getDescripcion();
                                    out.println("<option value=" + idTema + "> " + descripcionTema + " </option>");
                                }
                            %>

                        </select>
                    </div>


                    <div class="form-group">
                        <div class="col-sm-2">
                            <label for="inputFileEst" class="control-label">Seleccione la Estampa</label>
                        </div>
                        <div class="col-sm-10">
                            <input type="file" class="form-control" name="FileEst">
                        </div>
                    </div>                                                                                                                                                                     
                    <input type="text" name="admEst" value="1" hidden>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Ingresar</button>
                        </div>
                    </div>
                    
                    </form>
                </div>
            </div>
        </div>
    </div>            
</body>
</html>
