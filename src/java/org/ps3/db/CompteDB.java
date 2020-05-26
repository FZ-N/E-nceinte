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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;
import org.ps3.entities.Compte;


/**
 *
 * @author FZ
 */


public class CompteDB {

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

    public static int save(Compte Compte) {
        int status = 0;
        try {
            Connection conn = CompteDB.getConnection();
            PreparedStatement ps = conn.prepareStatement("insert into users(login,mdp,mail,nom,prenom,service) values (?,?,?,?,?,?)");
      ps.setString(1, Compte.getLogin());
            ps.setString(2, Compte.getMdp());
                   ps.setString(3, Compte.getMail());
       ps.setString(4, Compte.getNom());
       ps.setString(5, Compte.getPrenom());
       ps.setString(6, Compte.getService());

            status = ps.executeUpdate();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
//////////////////////////////////////////////////////////////////
    public static Compte getCompteByLogin(String login) {
        Compte p = new Compte();

        try {
            Connection con = CompteDB.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from users where login=?");
            ps.setString(1, login);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {        p.setLogin(rs.getString(1));
                 p.setMdp(rs.getString(2));
                  p.setMail(rs.getString(3));
                   p.setNom(rs.getString(4));
                    p.setPrenom(rs.getString(5));
                     p.setService(rs.getString(6));
            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return p;
    }

//**********Suppression des Comptes*******//
    public static int delete(String login) {
        int status = 0;
        try {
            Connection con = CompteDB.getConnection();
            PreparedStatement ps = con.prepareStatement("delete from users where login=?");
                ps.setString(1, login);
           
            status = ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
//**********Modification des Comptes********//

    public static int update(Compte p) {
        int status = 0;
        try {
            Connection con = CompteDB.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "update users set mdp=?, mail=?,nom=?,prenom=?,service=?  where login=?");
             
       ps.setString(1, p.getMdp());
                   ps.setString(2, p.getMail());
       ps.setString(3, p.getNom());
       ps.setString(4, p.getPrenom());
       ps.setString(5, p.getService());
        ps.setString(6, p.getLogin());
            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }


//**********Liste des Comptes****************//	
    public static List<Compte> getAllComptes() {
        List<Compte> list = new ArrayList<Compte>();
        try {
            Connection con = CompteDB.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from users");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Compte p = new Compte();
               
                p.setLogin(rs.getString(1));
                 p.setMdp(rs.getString(2));
                  p.setMail(rs.getString(3));
                   p.setNom(rs.getString(4));
                    p.setPrenom(rs.getString(5));
                     p.setService(rs.getString(6));
         
                list.add(p);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}
