package dao;

import dbcon.DatabaseConnection;
import java.sql.*;
import dto.ReportedIncidentsByCustomer;
import java.util.ArrayList;

public class ReportedIncidentsByCustomerDAO {
    
Connection con ;
PreparedStatement pst;
ResultSet rs;

    public boolean addIncidentByCustomer(ReportedIncidentsByCustomer obj)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("insert into ReportedIncidentsByCustomer(incDesc,"
                    + "expertID,customerID,questionID) values(?,?,?,?)");
            
            pst.setString(1, obj.getIncDesc());
            pst.setString(2, obj.getExpertID());
            pst.setString(3, obj.getCustomerID());
            pst.setInt(4, obj.getQuestionID());
            
            int count = pst.executeUpdate();
            
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
    
    public ArrayList<ReportedIncidentsByCustomer> getAllIncidentsByCustomer()
    {
        ArrayList<ReportedIncidentsByCustomer> lst = null;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("select * from ReportedIncidentsByCustomer");
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                lst = new ArrayList<>();
                
                while(rs.next())
                {
                    ReportedIncidentsByCustomer obj = new ReportedIncidentsByCustomer();
                    obj.setId(rs.getInt(1));
                    obj.setIncDesc(rs.getString(2));
                    obj.setPostedDate(rs.getTimestamp(3)+"");
                    obj.setExpertID(rs.getString(4));
                    obj.setCustomerID(rs.getString(5));
                    obj.setQuestionID(rs.getInt(6));
                    
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
    
    public ArrayList<ReportedIncidentsByCustomer> 
                            getAllIncidentsByCustomerID(String customerID)
    {
        ArrayList<ReportedIncidentsByCustomer> lst = null;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("select * from ReportedIncidentsByCustomer"
                    + " where customerID = ?");
            
            pst.setString(1, customerID);
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                lst = new ArrayList<>();
                
                while(rs.next())
                {
                    ReportedIncidentsByCustomer obj = new ReportedIncidentsByCustomer();
                    obj.setId(rs.getInt(1));
                    obj.setIncDesc(rs.getString(2));
                    obj.setPostedDate(rs.getTimestamp(3)+"");
                    obj.setExpertID(rs.getString(4));
                    obj.setCustomerID(rs.getString(5));
                    obj.setQuestionID(rs.getInt(1));
                    
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
}
