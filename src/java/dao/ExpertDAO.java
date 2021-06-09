package dao;

import dbcon.DatabaseConnection;
import java.sql.*;
import dto.Expert;
import java.util.ArrayList;
import java.util.UUID;

public class ExpertDAO {

Connection con ;
PreparedStatement pst;
ResultSet rs;

public boolean registerExpert(Expert obj)
{
    boolean b = true;
    
    try
        {
            con = DatabaseConnection.getConnection();

            String genpass = UUID.randomUUID().toString().substring(0, 5);            
            
            pst = con.prepareStatement("insert into Expert values(?,?,?,?,?)");
            
            pst.setString(1, obj.getId());
            pst.setString(2, genpass);
            pst.setBoolean(3, false);
            pst.setInt(4, obj.getCategoryID());
            pst.setInt(5, obj.getSubCategoryID());
            
            int count = pst.executeUpdate();
            
            if(count > 0)
            {
                boolean mailSent = MailDAO.sendMail(obj.getId(), 
"Registration Mail From ExpertMessaging", 
"Congrulations!!! <br> Dear Expert,<br>Your account has been created on Expert Messaging. <br>Following is your login id and "
        + "password : <br> "
        + "<b> login-id : "+obj.getId()+"</b><br>"+
        "<b> password : "+genpass+"</b>");
                
                if(mailSent)
                {
                    System.out.println("registration mail has been "
                        + "sent to "+obj.getId());
                    b = true;
                }
                else
                    System.out.println("registration mail has not been "
                        + "sent to "+obj.getId());
            }
            
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return b;
}

 public boolean checkExpertCredentials(Expert obj)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("SELECT * FROM Expert WHERE "
                    + "id = ? and password = ? and blocked = false");
            
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
 
 public boolean changePassword(Expert obj,String newPassword)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("SELECT * FROM Expert WHERE "
                    + "id = ? and password = ? and blocked = false");
            
            pst.setString(1, obj.getId());
            pst.setString(2, obj.getPassword());
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                pst = con.prepareStatement("UPDATE Expert SET password = ?"
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
   
 public boolean forgotPassword(Expert obj)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            String genpass = UUID.randomUUID().toString().substring(0, 5);
            
                pst = con.prepareStatement("UPDATE Expert SET password = ?"
                        + " WHERE id = ? and blocked = false");
                pst.setString(1, genpass);
                pst.setString(2, obj.getId());
                
                int count = pst.executeUpdate();
                
                if(count > 0)
                {
                boolean mailSent = MailDAO.sendMail(obj.getId(), 
"New password from ExpertMessaging", "This is your new password  : "+genpass);
                
                if(mailSent)
                    System.out.println("new password mail has been "
                        + "sent to "+obj.getId());
                else
                    System.out.println("Mail has not been "
                        + "sent to "+obj.getId());
                
                if(mailSent)
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
     
 public boolean deleteExpert(String expertid)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("delete from Expert where id = ?");
            
            pst.setString(1, expertid);
                    
            int count = pst.executeUpdate();
            
            if(count > 0)
            {
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
 
 public ArrayList<Expert> getAllExperts()
    {
        ArrayList<Expert> lst = null;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("select * from Expert");
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                lst = new ArrayList<>();
                
                while(rs.next())
                {
                    Expert obj = new Expert();
                    obj.setId(rs.getString(1));
                    obj.setPassword(rs.getString(2));
                    obj.setBlocked(rs.getBoolean(3));
                    obj.setCategoryID(rs.getInt(4));
                    obj.setSubCategoryID(rs.getInt(5));
                    
                    lst.add(obj);
                }
            }
            
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return lst;
    } 

 public boolean blockExpert(String expertid)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("Update Expert Set blocked = true where id = ?");
            
            pst.setString(1, expertid);
            
            int count = pst.executeUpdate();
            
            if(count > 0)
                b = true;
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return b;
    }
 
 public String getExpertByCatSubCat(int catid,int subcatid)
 {
     String expertid="";
     
     try
     {
         con = DatabaseConnection.getConnection();
         
         pst = con.prepareStatement("Select id From Expert Where categoryID = ? AND subCategoryID = ?");
         
         pst.setInt(1, catid);
         pst.setInt(2, subcatid);
         
         rs = pst.executeQuery();
         
         if(rs.isBeforeFirst())
         {
             rs.next();
             expertid = rs.getString("id");
         }
     }
     catch(Exception ex)
     {
         ex.printStackTrace();
     }
     
     return expertid;
 }

 public Expert getAllDataById(String expertid)
     {
       Expert exp=null;
       
       Connection con=null;
       
     try
     {
        con = DatabaseConnection.getConnection(); 
        
        pst = con.prepareStatement("select * from expert where id = ?");
        
        pst.setString(1, expertid);
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            if(rs.next())
            {  
                exp = new Expert();
                exp.setId(rs.getString(1));
                exp.setPassword(rs.getString(2));
                exp.setBlocked(rs.getBoolean(3));
                exp.setCategoryID(rs.getInt(4));
                exp.setSubCategoryID(rs.getInt(5));
             }
        }
     }
     catch(Exception ex)
     {
        ex.printStackTrace();
     }
     finally
     {
     try
     {
        con.close();
     }
     catch(Exception ex)
     {
        ex.printStackTrace();
     }
     }
     return exp;
     }
 
 public boolean updateExpert(Expert obj)
    {
    boolean b = false;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("update expert set password = ? , categoryID = ? , "
                + "subCategoryID = ? where id = ? ");
        
         pst.setString(1, obj.getPassword());
         pst.setInt(2, obj.getCategoryID());
         pst.setInt(3, obj.getSubCategoryID());
         pst.setString(4, obj.getId());
         
        int count = pst.executeUpdate();
        
        if(count > 0)
            b = true;
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return b;
}
 
}


















