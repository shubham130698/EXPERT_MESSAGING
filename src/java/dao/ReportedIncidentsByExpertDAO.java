package dao;

import dbcon.DatabaseConnection;
import java.sql.*;
import dto.ReportedIncidentsByExpert;
import java.util.ArrayList;

public class ReportedIncidentsByExpertDAO {
    
    Connection con ;
PreparedStatement pst;
ResultSet rs;

    public boolean addIncidentByExpert(ReportedIncidentsByExpert obj)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("insert into ReportedIncidentsByExperts(incDesc,"
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
    
    public ArrayList<ReportedIncidentsByExpert> getAllIncidentsByExpert()
    {
        ArrayList<ReportedIncidentsByExpert> lst = null;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("select * from ReportedIncidentsByExperts");
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                lst = new ArrayList<>();
                
                while(rs.next())
                {
                    ReportedIncidentsByExpert obj = new ReportedIncidentsByExpert();
                    obj.setId(rs.getInt(1));
                    obj.setIncDesc(rs.getString(2));
                    obj.setPostedDate(rs.getTimestamp(6)+"");
                    obj.setExpertID(rs.getString(3));
                    obj.setCustomerID(rs.getString(4));
                    obj.setQuestionID(rs.getInt(5));
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
    
    public ArrayList<ReportedIncidentsByExpert> 
                            getAllIncidentsByExpertID(String expertID)
    {
        ArrayList<ReportedIncidentsByExpert> lst = null;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("select * from ReportedIncidentsByExperts"
                    + " where expertID = ?");
            
            pst.setString(1, expertID);
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                lst = new ArrayList<>();
                
                while(rs.next())
                {
                    ReportedIncidentsByExpert obj = new ReportedIncidentsByExpert();
                    obj.setId(rs.getInt(1));
                    obj.setIncDesc(rs.getString(2));
                    obj.setPostedDate(rs.getTimestamp(6)+"");
                    obj.setExpertID(rs.getString(3));
                    obj.setCustomerID(rs.getString(4));
                    obj.setQuestionID(rs.getInt(5));
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
