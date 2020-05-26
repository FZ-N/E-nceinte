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
import java.text.SimpleDateFormat;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;
import org.ps3.entities.pre;
/**
 *
 * @author FZ
 */
public class preDB {
            public static Connection getConnection() {
            Connection conn = null;
            try{
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/PS3","fz","1234");
            }
            catch (Exception e){
                System.out.println(e);
            }
            return conn;
        }
        
          public static int save(int num, String bnf) {
           int status = 0;
            try{
         
              Connection  conn = preDB.getConnection();
        
              PreparedStatement ps = conn.prepareStatement("insert into pre(num,prenom) values(?,?)");
              ps.setInt(1,num);
               ps.setString(2,bnf);

              status = ps.executeUpdate();
              conn.close();
                }
            catch (Exception e){
                System.out.println(e);
            }
            return status;
        }
              public static pre getByNum(int num, String prenom) {
        pre p = new pre();

        try {
            Connection con = preDB.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from pre where num=? and prenom=?");
                  ps.setInt(1,num);
                  ps.setString(2,prenom);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {       
                
                       p.setNum(rs.getInt(1));
                       p.setPrenom(rs.getString(2));
                            p.setRv1(rs.getString(3));
              p.setRv2(rs.getString(4));
              p.setRv3(rs.getString(5));
              p.setRv4(rs.getString(6));

              p.setD1(rs.getDate(7));
              p.setD2(rs.getDate(8));
              p.setD3(rs.getDate(9));
              p.setD4(rs.getDate(14));
             
              p.setObs1(rs.getString(10));
              p.setObs2(rs.getString(11));
              p.setObs3(rs.getString(12));
              p.setObs4(rs.getString(13));

            }
            con.close();
        } catch (SQLException ex) {
        }

        return p;
    }

              
    public static int update1(pre p) {
        int status = 0;
        try {
            Connection con = preDB.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "update pre set rv1=?, d1=?, ob1=? where num=? and prenom=?");
        
                          ps.setInt(4,p.getNum());
               ps.setString(5,p.getPrenom());
              ps.setDate(2,new Date(p.getD1().getTime()));
        
              ps.setString(1,p.getRv1());
              ps.setString(3,p.getObs1());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }
        public static int update2(pre p) {
        int status = 0;
        try {
            Connection con = preDB.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "update pre set rv2=?, d2=?, ob2=? where num=? and prenom=?");
        
                          ps.setInt(4,p.getNum());
               ps.setString(5,p.getPrenom());
              ps.setDate(2,new Date(p.getD2().getTime()));
        
              ps.setString(1,p.getRv2());
              ps.setString(3,p.getObs2());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }
    
        public static int update3(pre p) {
        int status = 0;
        try {
            Connection con = preDB.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "update pre set rv3=?, d3=?, ob3=? where num=? and prenom=?");
        
                          ps.setInt(4,p.getNum());
               ps.setString(5,p.getPrenom());
              ps.setDate(2,new Date(p.getD3().getTime()));
        
              ps.setString(1,p.getRv3());
              ps.setString(3,p.getObs3());

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }
        
            
        public static int update(int pr,int num, String bnf,Date nrv) {
        int status = 0;
        try {
            Connection con = preDB.getConnection();
            PreparedStatement ps;
             if (pr==1)
             ps = con.prepareStatement("update pre set d1=? where num=? and prenom=?");
            else if (pr==2)
             ps = con.prepareStatement("update pre set d2=? where num=? and prenom=?");
             else   if (pr==3)
             ps = con.prepareStatement("update pre set d3=? where num=? and prenom=?");
             else if (pr==4)
             ps = con.prepareStatement("update pre set d4=? where num=? and prenom=?");
             else
              ps = con.prepareStatement("select * from pre ");
                          ps.setInt(2,num);
               ps.setString(3,bnf);
              ps.setDate(1,new Date(nrv.getTime()));
        
        

            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }

    public static int valide(int pr, int num, String bnf, int rv, String obs) {
    
           int status = 0;
        try {
            Connection con = preDB.getConnection();
               PreparedStatement ps;
            if (pr==1)
             ps = con.prepareStatement("update pre set rv1=?, ob1=? where num=? and prenom=?");
            else if (pr==2)
             ps = con.prepareStatement("update pre set rv2=?, ob2=? where num=? and prenom=?");
             else   if (pr==3)
             ps = con.prepareStatement("update pre set rv3=?, ob3=? where num=? and prenom=?");
                 else
             ps = con.prepareStatement("update pre set rv4=?, ob4=? where num=? and prenom=?");
                
               ps.setInt(3,num);
               ps.setString(4,bnf);
              if (rv == 1)
              ps.setString(1,"true");
              else
                  ps.setString(1,"false");
              ps.setString(2,obs);
            status = ps.executeUpdate();

            con.close();
        } catch (SQLException ex) {
        }

        return status;
    }
    
    }


    
