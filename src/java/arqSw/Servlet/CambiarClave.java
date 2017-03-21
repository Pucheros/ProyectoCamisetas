/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
import javax.servlet.http.HttpSession;

/**
 *
 * @author KEVIN
 */
@WebServlet(name = "CambiarClave", urlPatterns = {"/CambiarClave"})
public class CambiarClave extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
        HttpSession session = request.getSession();
        String tipo = (String) session.getAttribute("type");
        String pass = request.getParameter("clave");
        int id = Integer.parseInt(session.getAttribute("id").toString());
               
        if (tipo.equals("Cliente")) {
            ClienteDAO art = new ClienteDAO();
            Cliente Adm = art.obtenCliente(id);
            Adm.setClave(pass);
            art.actualizaCliente(Adm);
        } else if (tipo.equals("Artista")) {
            ArtistaDAO art = new ArtistaDAO();
            Artista Adm = art.obtenArtista(id);
            Adm.setClave(pass);
            art.actualizaArtista(Adm);
        } else if (tipo.equals("Administrador")) {
            AdministradorDAO art = new AdministradorDAO();
            Administrador Adm = art.obtenAdministrador(id);
            Adm.setClave(pass);
            art.actualizaAdministrador(Adm);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
