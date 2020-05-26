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


@WebServlet(name = "EditServletebnf", urlPatterns = {"/EditServletebnf"})
public class EditServletepm extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();  

        String idb = request.getParameter("idb");
        String statut = request.getParameter("statut");
        String rv = request.getParameter("rv");
        
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        Date nrv = new java.sql.Date(formatter.parse(request.getParameter("nrv")).getTime());
         Date dated = new java.sql.Date(formatter.parse(request.getParameter("dated")).getTime());
          Date datef = new java.sql.Date(formatter.parse(request.getParameter("datef")).getTime());
             

     	Pm Pm1=new Pm();  
         Pm1.setIdb(Integer.parseInt(idb));
         Pm1.setStatut(statut);
         Pm1.setRv(Integer.parseInt(rv));
        Pm1.setNrv((java.sql.Date) nrv);
        Pm1.setDated((java.sql.Date)dated);
       Pm1.setDatef((java.sql.Date)datef);
         PmDB.save(Pm1);
         
    	int status=PmDB.update(Pm1);  
    	if(status>0){  
            out.println("Données ajoutés avec succès");
         request.getRequestDispatcher("benef.jsp").include(request, response);
        }else{  
              
    
            out.println("Désolé! nous ne pouvons effectuer la sauvegarde");  
             
    	} 
    	out.close();
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(EditServletepm.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(EditServletepm.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
