/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package arqSw.Servlet;

import arqSw.DAO.ArtistaDAO;
import arqSw.DAO.ClienteDAO;
import arqSw.DAO.EstampaDAO;
import arqSw.Hibernate.Artista;
import arqSw.Hibernate.Cliente;
import arqSw.Hibernate.Estampa;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author simon
 */
@WebServlet(name = "Usuarios", urlPatterns = {"/Usuarios"})
public class Usuarios extends HttpServlet {
    
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
        
        int tForm = Integer.parseInt(request.getParameter("tForm"));
        ClienteDAO cliDAO = new ClienteDAO();
        ArtistaDAO artDAO = new ArtistaDAO();
        switch (tForm) {
            case 1:
                List<Cliente> listaClientes = cliDAO.obtenListaClientes();
                List<Artista> listaArtistas = artDAO.obtenListaArtistas();
                request.setAttribute("listaClientes", listaClientes);
                request.setAttribute("listaArtistas", listaArtistas);
                request.getRequestDispatcher("Administrador/VerUsuarios.jsp").forward(request, response);
                break;
            case 2:
                int tAC = Integer.parseInt(request.getParameter("id"));
                
                Cliente cliente = cliDAO.obtenCliente(tAC);
                if (request.getParameter("usuario") != null) {
                    String usuario = request.getParameter("usuario");
                    cliente.setUsuario(usuario);
                }
                if (request.getParameter("clave") != null) {
                    String clave = request.getParameter("clave");
                    cliente.setClave(clave);
                }
                if (request.getParameter("formaPago") != null) {
                    String formaPago = request.getParameter("formaPago");
                    cliente.setFormaPago(formaPago);
                }
                if (request.getParameter("ubicacion") != null) {
                    String ubicacion = request.getParameter("ubicacion");
                    cliente.setUbicacion(ubicacion);
                }
                cliDAO.actualizaCliente(cliente);
                response.sendRedirect("Administrador/indexAdm.jsp");
                break;
            case 3:
                int tAA = Integer.parseInt(request.getParameter("id"));
                
                Artista artist = artDAO.obtenArtista(tAA);
                if (request.getParameter("usuario") != null) {
                    String usuario = request.getParameter("usuario");
                    artist.setUsuario(usuario);
                }
                if (request.getParameter("clave") != null) {
                    String clave = request.getParameter("clave");
                    artist.setClave(clave);
                }
                artDAO.actualizaArtista(artist);
                response.sendRedirect("Administrador/indexAdm.jsp");
                break;
            case 4:
                int tE = Integer.parseInt(request.getParameter("id"));
                if (request.getParameter("tipo").equals("Cliente")) {
                    Cliente clien = cliDAO.obtenCliente(tE);
                    cliDAO.eliminaCliente(clien);
                } else {
                    Artista artis = artDAO.obtenArtista(tE);
                    
                    EstampaDAO estDAO = new EstampaDAO();
                    List<Estampa> estL = estDAO.obtenListaEstampas();
                    
                    for (int i = 0; i < estL.size(); i++) {                        
                        Artista a = estL.get(i).getArtista();
                        int idArtistaEst = a.getIdArtista();
                        
                        if (artis.getIdArtista() == idArtistaEst) {                           
                            estDAO.eliminaEstampa(estL.get(i));
                        }
                    }
                    artDAO.eliminaArtista(artis);
                }                
                response.sendRedirect("Administrador/indexAdm.jsp");
                break;
        }        
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
