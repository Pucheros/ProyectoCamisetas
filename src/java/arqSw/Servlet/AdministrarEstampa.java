package arqSw.Servlet;

import arqSw.DAO.ArtistaDAO;
import arqSw.DAO.EstampaDAO;
import arqSw.DAO.TemaDAO;
import arqSw.Hibernate.Artista;
import arqSw.Hibernate.Estampa;
import arqSw.Hibernate.Tema;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
//import static jdk.nashorn.internal.objects.NativeError.getFileName;
//import org.apache.commons.fileupload.FileItem;
//import org.apache.commons.fileupload.FileUploadException;
//import org.apache.commons.fileupload.disk.DiskFileItem;
//import org.apache.commons.fileupload.disk.DiskFileItemFactory;
//import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author A
 */
@WebServlet(name = "AdministrarEstampa", urlPatterns = {"/AdministrarEstampa"})
public class AdministrarEstampa extends HttpServlet {

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
        processRequest(request, response);
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        int id = 0;
        int idArtista = Integer.parseInt(session.getAttribute("id").toString());
        String nombre = request.getParameter("nombreEst");
        String descripcion = request.getParameter("descripcionEst");

        int idTema = Integer.parseInt(request.getParameter("temaEst"));
        String imagen = request.getParameter("FileEst");

//        File img = new File(imagen);//     
//        String path1 = "src/build/web/img/estampas/";
//        DiskFileItemFactory factory=new DiskFileItemFactory();
//        String path = img.getCanonicalPath();
//        factory.setRepository(new File(path1));
//        ServletFileUpload upload =new ServletFileUpload(factory);
//                
//        try {
//            List<FileItem> partes=upload.parseRequest(request);
//            for(FileItem items:partes){
//                File file= new File(path1,items.getName());
//                items.write(file);
//            }
//            
//        } catch (Exception ex) {
//            Logger.getLogger(AdministrarEstampa.class.getName()).log(Level.SEVERE, null, ex);
//        }                
        int accion = Integer.parseInt(request.getParameter("admEst"));

        TemaDAO tDAO = new TemaDAO();
        Tema t = tDAO.obtenTema(idTema);

        ArtistaDAO aDAO = new ArtistaDAO();
        Artista a = aDAO.obtenArtista(idArtista);

        EstampaDAO estDAO = new EstampaDAO();
        Estampa est; 
        switch (accion) {

            case 1: {
                //crear estampa
                est= new Estampa(t, a, nombre, descripcion, imagen, "", "", null);

                id = estDAO.guardaEstampa(est);
                response.sendRedirect("Artista/indexArt.jsp");
                break;
            }
            case 2: {
                //actualizar estampa  
                int idEst = Integer.parseInt(request.getParameter("idEst"));
                est = estDAO.obtenEstampa(idEst);
                
                est.setNombre(nombre);
                est.setImagenes(imagen);
                est.setDescripcion(descripcion);
                est.setTema(t);
                est.setArtista(a);                                
                estDAO.actualizaEstampa(est);
                  response.sendRedirect("Artista/indexArt.jsp");
                break;
            }
            case 3: {
                //eliminar estampa
                int idEst = Integer.parseInt(request.getParameter("idEst"));
                est = estDAO.obtenEstampa(idEst);
                estDAO.eliminaEstampa(est);
                  response.sendRedirect("Artista/indexArt.jsp");

            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
