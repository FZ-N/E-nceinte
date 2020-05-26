/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ps3.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
@WebServlet(name = "AfficherPm", urlPatterns = {"/AfficherPm"})
public class AfficherPm extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter      out = response.getWriter();
        out.println("<a href='indexpm.jsp'> Ajouter un nouveau Pm </a>");
        out.println("<h1>Liste des Pms</h1>");
        List<Pm>  liste = PmDB.getAllPms();
        
        out.print("<table border ='1'");
        out.print("<tr><td>ID</td><td>Date début</td><td>Statut</td><td>Rendez-vous validés</td><td>Prochain rendez-vous</td><td>Date fin</td></tr>");
       for (Pm p:liste){
           out.print("<tr><td>" +p.getIdb() + "</td><td>"+p.getDated()+ "</td><td>"+p.getStatut()+ "</td><td>"+p.getRv()+ "</td><td>"+p.getNrv()+"</td>"+"<td>"+p.getDatef()+"</td></tr>");
            
 }
    out.println("</table>");

    out.close();
        request.getRequestDispatcher("phases.jsp").include(request, response);
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
