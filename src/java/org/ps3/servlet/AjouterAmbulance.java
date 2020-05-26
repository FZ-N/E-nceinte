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

import org.ps3.entities.Ambulance;
import org.ps3.db.AmbulanceDB;

@WebServlet("/AjouterAmbulance")
public class AjouterAmbulance extends HttpServlet {
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
	
		PrintWriter out = response.getWriter();
		String matricule = request.getParameter("matricule");
		String disponibilite = request.getParameter("disponibilite");
		String etat = request.getParameter("etat");
		String lieu_actuel = request.getParameter("lieu_actuel");
		String staff_medical = request.getParameter("staff_medical");
		String destination = request.getParameter("destination");
                   SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.US);

       
                Date dates = new java.sql.Date(formatter.parse(request.getParameter("dates")).getTime());
      
                Date dater = new java.sql.Date(formatter.parse(request.getParameter("dater")).getTime());
      
		Ambulance ambulance = new Ambulance();
		ambulance.setMatricule(matricule);
		ambulance.setDisponibilite(disponibilite);
		ambulance.setEtat(etat);
		ambulance.setLieu_actuel(lieu_actuel);
		ambulance.setStaff_medical(staff_medical);
		ambulance.setDestination(destination);
		ambulance.setDate_sortie((java.sql.Date)dates);
		ambulance.setDate_retour((java.sql.Date)dater);
		
		AmbulanceDB.save(ambulance);
		out.print("Données enregistrées");
		//request.getRequestDispatcher("listamb.jsp").include(request, response);
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
