package org.ps3.db;


import static java.nio.file.Files.list;
import static java.rmi.Naming.list;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import static java.util.Collections.list;
import java.util.List;

import org.ps3.entities.Ambulance;

public class AmbulanceDB {
	public static Connection getConnection() {
  Connection conn =null;
try {
	  Class.forName("org.apache.derby.jdbc.ClientDriver");
            //Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:derby://localhost:1527/PS3","fz","1234");
}
catch(Exception e) {
	System.out.println(e);
}
return conn; 
}
public static int save(Ambulance p) {
	int status=0;
	try {
		Connection conn = AmbulanceDB.getConnection();
		PreparedStatement ps = conn.prepareStatement("insert into ambulance values(?,?,?,?,?,?,?,?)");
		ps.setString(1,p.getMatricule());
                 if(p.getDisponibilite() == "1")
                  ps.setString(2, "True");
               else
                  ps.setString(2, "False");   
	   if(p.getEtat() == "1")
                  ps.setString(3, "True");
               else
                  ps.setString(3, "False");   
	
	
		ps.setString(4,p.getLieu_actuel());
		ps.setString(5,p.getStaff_medical());
		ps.setString(6,p.getDestination());
		ps.setDate(7,new Date(p.getDate_sortie().getTime()));
		ps.setDate(8,new Date(p.getDate_retour().getTime()));
		status=ps.executeUpdate();
		conn.getClass();
		}
	catch (Exception e) {System.out.println(e);}
	return status;
}
public static List<Ambulance> getAllAmbulances() {
	List<Ambulance> liste= new ArrayList<Ambulance>();
	try {
		Connection conn = AmbulanceDB.getConnection();
		PreparedStatement ps = conn.prepareStatement("select * from ambulance");
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			Ambulance a=new Ambulance();
			a.setMatricule(rs.getString(1));
			a.setDisponibilite(rs.getString(2));
			a.setEtat(rs.getString(3));
			a.setLieu_actuel(rs.getString(4));
			a.setStaff_medical(rs.getString(5));
			a.setDestination(rs.getString(6));
			a.setDate_sortie(rs.getDate(7));
			a.setDate_retour(rs.getDate(8));
			liste.add(a);
		}
		
	}
	catch (Exception e) {System.out.println(e);}

return liste ;
}

public static String getNotif() {
	String adr = null;
        String bnf = null;
	try {
		Connection conn = AmbulanceDB.getConnection();
		PreparedStatement ps = conn.prepareStatement("select adr,benf from amb");
		ResultSet rs = ps.executeQuery();
			rs.next();
			adr = rs.getString(1);
                        bnf = rs.getString(2);

            ps = conn.prepareStatement("delete from amb where adr = ? and benf = ?");
		
		ps.setString(1,adr);
                ps.setString(2,bnf);
                ps.executeUpdate();
                 System.out.println(rs);
	}
	catch (Exception e) {System.out.println(e);}

return adr ;
}


    public static int on(String mat) throws SQLException {
        
        int status = 0;
        try {
            Connection con = CompteDB.getConnection();
   
            
            
                 PreparedStatement ps = con.prepareStatement(
                    "update ambulance set dispo = 'true' , dater = ? where mat = ?");
                 java.util.Date currentDate = Calendar.getInstance().getTime();

// java.sql.Date
Calendar calendar = Calendar.getInstance();
java.sql.Date dat = new java.sql.Date(calendar.getTime().getTime());
        	 ps.setDate(1, dat);
                 ps.setString(2,mat);
              

           
        
            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;
    }

    public static int off(String adr, String benef) {
                int status = 0;
        try {
            Connection con = CompteDB.getConnection();
// java.util.Date
java.util.Date currentDate = Calendar.getInstance().getTime();

// java.sql.Date
Calendar calendar = Calendar.getInstance();
java.sql.Date dat = new java.sql.Date(calendar.getTime().getTime());
    
                 PreparedStatement ps = con.prepareStatement(
                    "insert into amb values(?,?,?)");
                 
                                  ps.setString(3, adr);
                                   ps.setDate(1, dat);
                                    ps.setString(2, benef);
           
        
            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;    }
    
    
    
    public static int notif(String adr) {
                int status = 0;
                
        try {
            Connection con = CompteDB.getConnection();
   
            java.util.Date currentDate = Calendar.getInstance().getTime();

// java.sql.Date
Calendar calendar = Calendar.getInstance();
java.sql.Date dat = new java.sql.Date(calendar.getTime().getTime());
    
                 PreparedStatement ps = con.prepareStatement(
                    "update ambulance set dispo=?,dest=?, dates=? where mat=?");
        	ps.setString(1,"False");
                ps.setString(2,adr);
               ps.setDate(3, dat);

                ps.setString(4, getmat());
           
        
            status = ps.executeUpdate();

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return status;    }

    public static String getmat() {
            String mat= null;
        	try {
		Connection conn = AmbulanceDB.getConnection();
		PreparedStatement ps = conn.prepareStatement("select mat from ambulance where dispo=true");
		ResultSet rs = ps.executeQuery();
                        rs.next();
		
			mat = rs.getString(1);
		
		
	}
	catch (Exception e) {System.out.println(e);}

return mat ;
    }
}


