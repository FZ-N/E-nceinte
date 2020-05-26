package org.ps3.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.ps3.db.CompteDB;
import org.ps3.db.bnfDB;
import org.ps3.entities.Compte;
import org.ps3.entities.benef;


@WebServlet(name = "EditServletebnf", urlPatterns = {"/EditServletebnf"})
public class EditServletebnf extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();  

      
                     String num = request.getParameter("num");
        String cin = request.getParameter("cin");
        String np = request.getParameter("np");
        String nm = request.getParameter("nm");
        String tg = request.getParameter("tg");
         String no = request.getParameter("no");
        String obs = request.getParameter("obs");
         String nom = request.getParameter("nom");
        String pr = request.getParameter("pr");
        String adr = request.getParameter("adr");
   
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
                     
                  
   
    	int status = bnfDB.update(p); 
           out.println(status);
    	if(status>0){  
             response.sendRedirect("ben3.jsp"); 
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
