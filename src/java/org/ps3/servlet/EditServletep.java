package org.ps3.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
import org.ps3.db.preDB;
import org.ps3.entities.pre;



@WebServlet(name = "EditServletep", urlPatterns = {"/EditServletep"})
public class EditServletep extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();  
        String num = request.getParameter("num");
        String cpn = request.getParameter("cpn");
        String bnf = request.getParameter("bnf");
       
   
        
       
      //  Date daterv = sdformat.parse(rv);  
        int pr = 0;
      pre p = preDB.getByNum(Integer.parseInt(num),bnf);
        
                         if( Integer.parseInt(cpn) == 0 &&  p.getNum() == null)
           {preDB.save(Integer.parseInt(num),bnf);
       
           
    }
    
   
        else{
             if (p.getD1()!= null)
            pr = 1;
            if (p.getD2()!= null)
                    pr = 2;
           if (p.getD3() != null)
                        pr = 3;
                      if (p.getD4() != null)
                            pr = 4;
            
                               
       }
        if (Integer.parseInt(cpn) == 2 && pr>0 && pr < 5){
             String obs = request.getParameter("obs");
            
       /*   String rv = request.getParameter("rv"); 
           DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        LocalDateTime now2 = LocalDateTime.now();
          Date now = sdformat.parse(dtf.format(now2)); 
          out.println(daterv.compareTo(now));
      if(rv.equals(dtf.format(now)))*/
     preDB.valide(pr,Integer.parseInt(num),bnf,1,obs);
    
             // response.sendRedirect(request.getContextPath() + "/pre.jsp?pr="+pr+"&num="+num+"&bnf="+bnf);  
     /* if (daterv.compareTo(now) < 0)   
       out.println("sdf");
         if (daterv.compareTo(now) > 0)  
       out.println("big");*/

    }  
                if (Integer.parseInt(cpn) == 3 && pr < 4){
                     String nrv = request.getParameter("nrv");
                    pr++;

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
             java.sql.Date drv= new java.sql.Date(formatter.parse(request.getParameter("nrv")).getTime());       
        out.println(pr);  out.println(num);  out.println(bnf);  out.println(drv);
          preDB.update(pr,Integer.parseInt(num),bnf,drv);
                response.sendRedirect(request.getContextPath() + "/pre.jsp?pr="+pr+"&num="+num+"&bnf="+bnf);  


    }  
   else
                    response.sendRedirect(request.getContextPath() + "/pre.jsp?pr="+pr+"&num="+num+"&bnf="+bnf);   
        
    	
    	out.close();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException | ParseException ex) {
            Logger.getLogger(EditServletep.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException | ParseException ex) {
            Logger.getLogger(EditServletep.class.getName()).log(Level.SEVERE, null, ex);
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
