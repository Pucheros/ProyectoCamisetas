package arqSw.Servlet;

import arqSw.DAO.EstampaDAO;
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

@WebServlet(name = "EstampaServlet", urlPatterns = {"/EstampaServlet"})
public class EstampaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        EstampaDAO estDAO = new EstampaDAO();
        List<Estampa> listaEstampas = estDAO.obtenListaEstampas();
        request.setAttribute("listaEstampas", listaEstampas);
        request.getRequestDispatcher("Cliente/Catalogo.jsp").forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
