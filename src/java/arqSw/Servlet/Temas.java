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

@WebServlet(name = "Temas", urlPatterns = {"/Temas"})
public class Temas extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);

        TemaDAO tem = new TemaDAO();
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
                case 5:
                    List<Tema> listaTemas = tem.obtenListaTemas();
                    request.setAttribute("listaTemas", listaTemas);
                    request.getRequestDispatcher("Administrador/temas.jsp").forward(request, response);
                    break;
            }
        
    }
}
