package org.ps3.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.ps3.db.CompteDB;
import org.ps3.entities.Compte;


@WebServlet(name = "EditServlete2", urlPatterns = {"/EditServlete2"})
public class EditServlete2 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();  

      
                 String login = request.getParameter("login");
        String mdp = request.getParameter("mdp");
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String mail = request.getParameter("mail");
        String service = request.getParameter("service");
                   
       Compte Pm1 = new Compte();
       
       
       Pm1.setLogin(login);
       
       Pm1.setMail(mail);
       
       Pm1.setMdp(mdp);
       Pm1.setService(service);
       Pm1.setNom(nom);
       Pm1.setPrenom(prenom);

       CompteDB.save(Pm1);
  
    	int status=CompteDB.update(Pm1);  
    	if(status>0){  
            out.println("Données ajoutés avec succès");
        // request.getRequestDispatcher("admin/chercher.jsp").include(request, response);
         response.sendRedirect("affichage.jsp"); 
        }else{  
              
    
            out.println("Désolé! nous ne pouvons effectuer la sauvegarde");  
             
    	} 
    	out.close();
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
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
