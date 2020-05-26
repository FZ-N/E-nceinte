/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ps3.db;

import static java.nio.file.Files.list;
import static java.rmi.Naming.list;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;
import org.ps3.entities.Pm;
/**
 *
 * @author FZ
 */
public class PmDB {
            public static Connection getConnection() {
            Connection conn = null;
            try{
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/Etablissement","FZ","1234");
            }
            catch (Exception e){
                System.out.println(e);
            }
            return conn;
        }
        
          public static int save(Pm p) {
           int status = 0;
            try{
         
              Connection  conn = PmDB.getConnection();
        
              PreparedStatement ps = conn.prepareStatement("insert into Pm values(?,?,?,?,?,?)");
              ps.setInt(1,p.getIdb());
              ps.setDate(2,new Date(p.getDated().getTime()));
              ps.setDate(3,new Date(p.getDatef().getTime()));
              ps.setString(4,p.getStatut());
              ps.setInt(5,p.getRv());
              ps.setDate(6,new Date(p.getNrv().getTime()));
              status = ps.executeUpdate();
              conn.close();
                }
            catch (Exception e){
                System.out.println(e);
            }
            return status;
        }
              public static Pm getPmById(int idb) {
        Pm p = new Pm();

        try {
            Connection con = PmDB.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from pm where idb=?");
                  ps.setInt(1,idb);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {       
                
                       p.setIdb(rs.getInt(1));
              p.setDated(rs.getDate(2));
              p.setDatef(rs.getDate(2));
              p.setStatut(rs.getString(4));
              p.setRv(rs.getInt(5));
              p.setNrv(rs.getDate(6));
            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return p;
    }

//**********Suppression des Pms*******//
    public static int delete(int id) {
        int status = 0;
        try {
            Connection con = PmDB.getConnection();
            PreparedStatement ps = con.prepareStatement("delete from pm where idb=?");
                ps.setInt(1, id);
           
            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
//**********Modification des Pms********//

    public static int update(Pm p) {
        int status = 0;
        try {
            Connection con = PmDB.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "update pm set nrv=?, dated=?,datef=?, statut=?,rv=?  where idb=?");
             
                    ps.setInt(6,p.getIdb());
                    ps.setDate(2,new Date(p.getDated().getTime()));
                    ps.setDate(3,new Date(p.getDatef().getTime()));
                    ps.setString(4,p.getStatut());
                    ps.setInt(5,p.getRv());
                    ps.setDate(1,new Date(p.getNrv().getTime()));
            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }


    public static List<Pm> getAllPms() {
//To change body of generated methods, choose Tools | Templates.
List<Pm> liste= new ArrayList <Pm>();
try{
    Connection conn = PmDB.getConnection();
    PreparedStatement ps = conn.prepareStatement("select * from PM");
    ResultSet rs = ps.executeQuery();
    while (rs.next()){
              Pm p=new Pm();

              p.setIdb(rs.getInt(1));
              p.setDated(rs.getDate(2));
              p.setDatef(rs.getDate(2));
              p.setStatut(rs.getString(4));
              p.setRv(rs.getInt(5));
              p.setNrv(rs.getDate(6));
              
              liste.add(p);
              
          } conn.close();
    }
       catch (Exception e){
                System.out.println(e);
            }
return liste;
    }
    
}
