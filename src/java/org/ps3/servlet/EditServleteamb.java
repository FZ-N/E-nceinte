package org.ps3.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.ps3.db.AmbulanceDB;



@WebServlet(name = "EditServleteamb", urlPatterns = {"/EditServleteamb"})
public class EditServleteamb extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();  
        String mat = request.getParameter("mat");
        String bnf = request.getParameter("bnf");
        String adr = request.getParameter("adr");
      
        
         if(mat != null )
         {   AmbulanceDB.on(mat);
            response.sendRedirect(request.getContextPath() + "/amb3.jsp");
            
       }
   
         else if(adr != null && bnf != null){
         AmbulanceDB.off(adr,bnf);
                          

       // request.getRequestDispatcher("bnf/chercher.jsp").forward(request, response);
       response.sendRedirect(request.getContextPath() + "/bnf.jsp");
         }
         else
                  response.sendRedirect(request.getContextPath() + "/bnf.jsp");
    	
    	out.close();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(EditServleteamb.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(EditServleteamb.class.getName()).log(Level.SEVERE, null, ex);
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
