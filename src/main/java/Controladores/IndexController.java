
package Controladores;

import Daos.RegistroDao;
import Daos.RegistroDaoImpl;
import Daos.ResumenDao;
import Daos.ResumenDaoImpl;
import Modelos.Resumen;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author David Herrera
 */
public class IndexController extends HttpServlet {

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
        System.out.println(request.getAttribute("user"));
        request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

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
        RegistroDao registroDao = new RegistroDaoImpl();
        ResumenDao resumenDao = new ResumenDaoImpl();
        Resumen resumen = resumenDao.getResumen();
        request.setAttribute("user", request.getParameter("user"));
        request.setAttribute("uso", resumen.getUso());
        request.setAttribute("libre", resumen.getLibre());
        request.setAttribute("total", resumen.getTotal());
        request.setAttribute("prom", resumen.getPromedio());

        request.setAttribute("lstHistorial", registroDao.listarRegistros());
        request.setAttribute("lstActivos", registroDao.listarActivos());
        request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
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
