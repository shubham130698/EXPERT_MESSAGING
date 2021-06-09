package dao;

import dbcon.DatabaseConnection;
import java.sql.*;
import dto.Admin;
import java.util.UUID;

public class AdminDAO {

Connection con ;
PreparedStatement pst;
ResultSet rs;

    public boolean checkUser(Admin obj)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("SELECT * FROM Admin WHERE "
                    + "id = ? and password = ?");
            
            pst.setString(1, obj.getId());
            pst.setString(2, obj.getPassword());
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
                b = true;
            
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return b;
    }
    
    
    public boolean changePassword(Admin obj,String newPassword)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("SELECT * FROM Admin WHERE "
                    + "id = ? and password = ?");
            
            pst.setString(1, obj.getId());
            pst.setString(2, obj.getPassword());
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                pst = con.prepareStatement("UPDATE Admin SET password = ?"
                        + " WHERE id = ?");
                pst.setString(1, newPassword);
                pst.setString(2, obj.getId());
                
                int count = pst.executeUpdate();
                
                if(count > 0)
                    b = true;
            }
            
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return b;
    }
    
    
    public boolean forgotPassword(Admin obj)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            String genpass = UUID.randomUUID().toString().substring(0, 5);
            
                pst = con.prepareStatement("UPDATE Admin SET password = ?"
                        + " WHERE id = ?");
                pst.setString(1, genpass);
                pst.setString(2, obj.getId());
                
                int count = pst.executeUpdate();
                
                boolean mailSent = MailDAO.sendMail(obj.getId(), 
"New password from ExpertMessaging", "This is your new password  : "+genpass);
                
                if(mailSent)
                    System.out.println("new password mail has been "
                        + "sent to "+obj.getId());
                else
                    System.out.println("Mail has not been "
                        + "sent to "+obj.getId());
                
                if(count > 0)
                    b = true;
                
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return b;
    }
}
