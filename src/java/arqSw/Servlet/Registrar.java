package arqSw.Servlet;

import arqSw.DAO.AdministradorDAO;
import arqSw.DAO.ArtistaDAO;
import arqSw.DAO.ClienteDAO;
import arqSw.Hibernate.Administrador;
import arqSw.Hibernate.Artista;
import arqSw.Hibernate.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KEVIN
 */
@WebServlet(name = "Registrar", urlPatterns = {"/Registrar"})
public class Registrar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        //request.getRequestDispatcher("link.html").include(request, response);
        String name = request.getParameter("usuario");
        String pass = request.getParameter("clave");
        int tForm = Integer.parseInt(request.getParameter("tForm"));
        Integer id = 0;
        switch (tForm) {
            case 1: {
                ArtistaDAO artDAO = new ArtistaDAO();
                Artista artista = new Artista(name, pass, null);
                id = artDAO.guardaArtista(artista);
                break;
            }
            case 2: {
                String ubicacion = request.getParameter("ubicacion");
                String fPago = request.getParameter("fPago");

                ClienteDAO cliDAO = new ClienteDAO();
                Cliente cliente = new Cliente(name, pass, ubicacion, fPago, null);
                id = cliDAO.guardaCliente(cliente);
                break;
            }
            case 3: {
                AdministradorDAO admDAO = new AdministradorDAO();
                Administrador adm = new Administrador(name, pass);
                id = admDAO.guardaAdministrador(adm);
                break;
            }

        }
        if (id != 0) {
            if (tForm != 3) {
                response.sendRedirect("index.html");
            } else {
                response.sendRedirect("Administrador/indexAdm.jsp");
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
