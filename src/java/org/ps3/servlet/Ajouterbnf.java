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
import org.ps3.db.bnfDB;
import org.ps3.entities.benef;


/**
 *
 * @author FZ
 */
@WebServlet(name = "Ajouterbnf", urlPatterns = {"/Ajouterbnf"})
public class Ajouterbnf extends HttpServlet {

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
    
       PrintWriter out = response.getWriter();
    
        String num = request.getParameter("num");
        String cin = request.getParameter("cin");
        String np = request.getParameter("np");
        String nm = request.getParameter("nm");
        String tg = request.getParameter("tg");
         String no = request.getParameter("no");
        String obs = request.getParameter("obs");
         String nom = request.getParameter("nom");
        String pr = request.getParameter("pr");
   
        
       benef p = new benef();
       
   p.setNum_menage(Integer.parseInt(num));
                 p.setCIN(cin);
                  p.setNom_pere(np);
                   p.setNom_mere(nm);
                    p.setTest_gro(tg);
                     p.setNbr_enfants(Integer.parseInt(no));
                     p.setObservations(obs);   
                     p.setPrenom(pr);   
                     p.setNom(nom);   
                     
                  
   
                      
        bnfDB.save(p);

     
   response.sendRedirect("bnf/ben.jsp"); 
       
               
       
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
            Logger.getLogger(Ajouterbnf.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Ajouterbnf.class.getName()).log(Level.SEVERE, null, ex);
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
