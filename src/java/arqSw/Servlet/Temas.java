/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package arqSw.Servlet;

import arqSw.DAO.TemaDAO;
import arqSw.Hibernate.Tema;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author simon
 */
@WebServlet(name = "Temas", urlPatterns = {"/Temas"})
public class Temas extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    TemaDAO tem = new TemaDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        PrintWriter out = response.getWriter();
        List<Tema> temaP = tem.obtenListaTemas();

        try {
            out.println("<html><head>\n"
                    + "    <meta charset=\"utf-8\">\n"
                    + "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
                    + "    <script type=\"text/javascript\" src=\"http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js\"></script>\n"
                    + "    <script type=\"text/javascript\" src=\"http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js\"></script>\n"
                    + "    <link href=\"http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n"
                    + "    <link href=\"css\\Administrador\\verTemas.css\" rel=\"stylesheet\" type=\"text/css\">\n"
                    + "  </head><body>\n"
                    + "    <div class=\"navbar navbar-default navbar-static-top\">\n"
                    + "      <div class=\"container\">\n"
                    + "        <div class=\"navbar-header\">\n"
                    + "          <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#navbar-ex-collapse\">\n"
                    + "            <span class=\"sr-only\">Toggle navigation</span>\n"
                    + "            <span class=\"icon-bar\"></span>\n"
                    + "            <span class=\"icon-bar\"></span>\n"
                    + "            <span class=\"icon-bar\"></span>\n"
                    + "          </button>\n"
                    + "          <a class=\"navbar-brand\" href=\"#\"><span>Administrador</span><br></a>\n"
                    + "        </div>\n"
                    + "        <div class=\"collapse navbar-collapse\" id=\"navbar-ex-collapse\">\n"
                    + "          <ul class=\"nav navbar-nav navbar-right\">\n"
                    + "            <li class=\"active\">\n"
                    + "              <a href=\"indexAdm.html\">Usuarios<br></a>\n"
                    + "            </li>\n"
                    + "            <li>\n"
                    + "              <a href=\"temasAdm.html\">Temas<br></a>\n"
                    + "            </li>\n"
                    + "            <li>\n"
                    + "              <a href=\"#\">Catalogo<br></a>\n"
                    + "            </li>\n"
                    + "          </ul>\n"
                    + "        </div>\n"
                    + "      </div>\n"
                    + "    </div>\n"
                    + "    <div class=\"section\">\n"
                    + "      <div class=\"container\">\n"
                    + "        <div class=\"row\">\n"
                    + "          <div class=\"col-md-12\">\n"
                    + "            <div class=\"page-header\">\n"
                    + "              <h1>Temas</h1>\n"
                    + "            </div>\n"
                    + "            <table class=\"table\">\n"
                    + "              <thead>\n"
                    + "                <tr>\n"
                    + "                  <th>ID</th>\n"
                    + "                  <th>Nombre</th>\n"
                    + "                </tr>\n"
                    + "              </thead>\n"
                    + "              <tbody>");
            for (Tema a : temaP) {
                out.println("<tr>\n"
                        + "                  <td>" + a.getIdTema() + "</td>\n"
                        + "                  <td>" + a.getDescripcion() + "</td>\n"
                        + "                </tr>");
            }
            out.println("</tbody>\n"
                    + "            </table>\n"
                    + "          </div>\n"
                    + "        </div>\n"
                    + "      </div>\n"
                    + "    </div>\n"
                    + "  \n"
                    + "\n"
                    + "</body></html>");

        } finally {
            out.close();
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        int tForm = Integer.parseInt(request.getParameter("tForm"));

        switch (tForm) {
            case 1:
                String nombre = request.getParameter("nombre");
                Tema temaNuevo = new Tema(nombre, null);
                tem.guardaTema(temaNuevo);
                break;
            case 2:

                break;
            case 3:
                Tema temaActualizar = tem.obtenTema(0);
                temaActualizar.setDescripcion("Algo");
                tem.actualizaTema(temaActualizar);
                break;
            case 4:
                Tema temaBorrar = tem.obtenTema(0);
                tem.eliminaTema(temaBorrar);
                break;
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
