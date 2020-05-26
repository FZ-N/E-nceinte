package org.ps3.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ps3.entities.Ambulance;
import org.ps3.db.AmbulanceDB;

/**
 * Servlet implementation class AffichageServlet
 */
@WebServlet("/AffichageServlet")
public class Affichageambulance extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<a href ='formamb.jsp'>Ajouter une ambulance </a>");
		out.println("<table border='1'>");
		out.println("<h1>Liste des ambulances </h1>");
		List<Ambulance> liste=AmbulanceDB.getAllAmbulances();
		out.println("<tr><td>matricule</td></tr><tr><td>disponibilite</td></tr><tr><td>etat</td></tr><tr><td>lieu actuel</td></tr><tr><td>staff medical</td></tr><tr><td>destination</td></tr><tr><td>date sortie</td></tr><tr><td>date retour</td></tr>");
	for(Ambulance a:liste) {
		out.print("<tr><td>"+a.getMatricule()+"</td></tr>"+"<tr><td>"+a.getDisponibilite()+"</td></tr>"+"<tr><td>"+a.getEtat()+"</td></tr>"+"<tr><td>"+a.getLieu_actuel()+"</td></tr>"+"<tr><td>"+a.getStaff_medical()+"</td></tr>"+a.getStaff_medical()+"</td></tr>"+a.getDestination()+"</td></tr>"+a.getDate_sortie()+"</td></tr>"+a.getDate_retour()+"</td></tr>");
		//request.getRequestDispatcher("listamb.jsp").include(request, response);
	}
out.println("</table>");
out.close();

}
	}