package dao;

import dbcon.DatabaseConnection;
import java.sql.*;
import dto.QuestionCategory;
import java.util.ArrayList;

public class QuestionCategoryDAO {
    
Connection con ;
PreparedStatement pst;
ResultSet rs;


public boolean addQuestionCategory(String categoryName)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("insert into QuestionCategory(categoryName) "
                    + "values(?)");
            
            pst.setString(1, categoryName);
            
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

public boolean deleteQuestionCategory(String categoryName)
    {
        boolean b = false;
        
        try
        {
                int id =  getCategoryID(categoryName);
         
                con = DatabaseConnection.getConnection();
                
                if(id > 0)
                {
                        pst = con.prepareStatement("delete from QuestionCategory "
                                + "where id = ?");

                        pst.setInt(1, id);

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

public ArrayList<QuestionCategory> getAllQuestionCategories()
{
    ArrayList<QuestionCategory> lst = null;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("select * from QuestionCategory");
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            lst = new ArrayList<>();
            
            while(rs.next())
            {
                QuestionCategory obj = new QuestionCategory();
                obj.setId(rs.getInt(1));
                obj.setCategoryName(rs.getString(2));
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

public int getCategoryID(String categoryName)
{
    int id = 0;
    
    try
    {
        con = DatabaseConnection.getConnection();
            
        pst = con.prepareStatement("select id from QuestionCategory "
                    + "where categoryName = ?");
            
            pst.setString(1, categoryName);
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                rs.next();
                
                id =  rs.getInt("id");
            }
            
            con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return id;
}


public String getCategoryName(int categoryId)
{
    String catname = "";
    
    try
    {
        con = DatabaseConnection.getConnection();
            
        pst = con.prepareStatement("select categoryName from QuestionCategory "
                    + "where id = ?");
            
            pst.setInt(1, categoryId);
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                rs.next();
                
                catname =  rs.getString("categoryName");
            }
            
            con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return catname;
}

}
