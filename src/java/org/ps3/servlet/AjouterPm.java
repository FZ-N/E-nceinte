/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ps3.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.ps3.db.PmDB;
import org.ps3.entities.Pm;

/**
 *
 * @author FZ
 */
@WebServlet(name = "AjouterPm", urlPatterns = {"/AjouterPm"})
public class AjouterPm extends HttpServlet {

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
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
    
        String idb = request.getParameter("idb");
        String statut = request.getParameter("statut");
        String rv = request.getParameter("rv");
        
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        Date nrv = new java.sql.Date(formatter.parse(request.getParameter("nrv")).getTime());
         Date dated = new java.sql.Date(formatter.parse(request.getParameter("dated")).getTime());
          Date datef = new java.sql.Date(formatter.parse(request.getParameter("datef")).getTime());
                
       Pm Pm1 = new Pm();
       Pm1.setIdb(Integer.parseInt(idb));
       Pm1.setStatut(statut);
       Pm1.setRv(Integer.parseInt(rv));
      Pm1.setNrv((java.sql.Date) nrv);
      Pm1.setDated((java.sql.Date)dated);
     Pm1.setDatef((java.sql.Date)datef);
       PmDB.save(Pm1);
       out.println("Données ajoutés avec succès");
       request.getRequestDispatcher("indexpm.jsp").include(request, response);
               
       
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(AjouterPm.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(AjouterPm.class.getName()).log(Level.SEVERE, null, ex);
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
