/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ps3.db;

import static java.nio.file.Files.list;
import static java.rmi.Naming.list;
import java.sql.Connection;
import java.sql.DriverManager;
import static java.sql.DriverManager.println;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;
import org.ps3.entities.benef;



/**
 *
 * @author FZ
 */


public class bnfDB {

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            //Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:derby://localhost:1527/PS3","fz","1234");
            //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ensias12", "root", "root");
        } catch (Exception e) {
            System.out.println("e");
        }
        return conn;
    }

    public static int save(benef ben) {
        int status = 0;
        try {
            Connection conn = bnfDB.getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into ben values (?,?,?,?,?,?,?,?,?,?)");
  
            ps.setInt(1, ben.getNum_menage());
         ps.setString(2, ben.getCIN());
            ps.setString(6, ben.getNom());
               ps.setString(7, ben.getPrenom());
                      ps.setString(8, ben.getNom_pere());
               ps.setString(9, ben.getNom_mere());
                    ps.setString(10, ben.getAdr());
               if(ben.getTest_gro() == "true")
                  ps.setString(5, "True");
               else
                  ps.setString(5, "False");   
                     ps.setInt(3, ben.getNbr_enfants());
                       ps.setString(4, ben.getObservations());
                                         
 
            status = ps.executeUpdate();
            
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
//////////////////////////////////////////////////////////////////
    public static benef getBenefBynum(int num_menage) {
        benef p = new benef();

        try {
            Connection con = bnfDB.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from ben where num_menage=?");
            ps.setInt(1, num_menage);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {     
                  p.setNum_menage(rs.getInt(1));
                 p.setCIN(rs.getString(2));
                                 p.setTest_gro(rs.getString(5));
                     p.setNbr_enfants(rs.getInt(3));
                     p.setObservations(rs.getString(4));   
                      p.setNom(rs.getString(6));
                   p.setPrenom(rs.getString(7));
                    p.setNom_pere(rs.getString(8));
                   p.setNom_mere(rs.getString(9));
                    p.setAdr(rs.getString(10));
                     
            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return p;
    }

//**********Suppression des Benefs*******//
    public static int delete(int num_menage) {
        int status = 0;
        try {
            Connection con = bnfDB.getConnection();
            PreparedStatement ps = con.prepareStatement("delete from ben where num_menage=?");
                ps.setInt(1, num_menage);
           
            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
//**********Modification des Benefs********//

    public static int update(benef ben) {
        int status = 0;
        try {
            Connection con = bnfDB.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "update ben set CIN=?,nom=?,prenom=?,nom_pere=?,nom_mere=?,test_gro=?,nbr_enfants=?,observations=? where num_menage=?");
             
          ps.setInt(9, ben.getNum_menage());
         ps.setString(1, ben.getCIN());
            ps.setString(2, ben.getNom());
               ps.setString(3, ben.getPrenom());
                           ps.setString(4, ben.getNom_pere());
               ps.setString(5, ben.getNom_mere());
                  ps.setString(6, ben.getTest_gro());
                     ps.setInt(7, ben.getNbr_enfants());
                       ps.setString(8, ben.getObservations());
            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }


//**********Liste des Benefs****************//	
    public static List<benef> getAllBenefs() {
        List<benef> list = new ArrayList<benef>();
        try {
            Connection con = bnfDB.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from ben");
            ResultSet rs = ps.executeQuery();
           
                
              
      //     list.add(p);
            while (rs.next()) {
                  benef p = new benef();
                
                p.setNum_menage(rs.getInt(1));
                 p.setCIN(rs.getString(2));
                                 p.setTest_gro(rs.getString(5));
                     p.setNbr_enfants(rs.getInt(3));
                     p.setObservations(rs.getString(4));   
                      p.setNom(rs.getString(6));
                   p.setPrenom(rs.getString(7));
                    p.setNom_pere(rs.getString(8));
                   p.setNom_mere(rs.getString(9));
                    p.setAdr(rs.getString(10));
         
                list.add(p);
            }
               
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}

