package dao;

import dbcon.DatabaseConnection;
import java.sql.*;
import dto.QuestionSubCategory;
import java.util.ArrayList;

public class QuestionSubCategoryDAO {
    
Connection con ;
PreparedStatement pst;
ResultSet rs;


public boolean addQuestionSubCategory(QuestionSubCategory obj)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("insert into QuestionSubCategory(subCategoryName,"
                    + "categoryID) values(?,?)");
            
            pst.setString(1, obj.getSubCategoryName());
            pst.setInt(2, obj.getCategoryID());
            
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
    
public int getQuestionSubCategoryID(String questionSubCategoryName)
{
    int id = 0;
    
    try
    {
        con = DatabaseConnection.getConnection();
            
        pst = con.prepareStatement("select id from QuestionSubCategory "
                    + "where subCategoryName = ?");
            
            pst.setString(1, questionSubCategoryName);
            
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

public boolean deleteQuestionSubCategory(String questionSubCategoryName)
    {
        boolean b = false;
        
        try
        {
                int id =  getQuestionSubCategoryID(questionSubCategoryName);
         
                con = DatabaseConnection.getConnection();
                
                if(id > 0)
                {
                        pst = con.prepareStatement("delete from QuestionSubCategory "
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

public ArrayList<QuestionSubCategory> getQuestionSubCategoriesByQuestionCategory(
String questionCategoryName)
{
    ArrayList<QuestionSubCategory> lst = null;
    
    int questionCategoryID = 
            new QuestionCategoryDAO().getCategoryID(questionCategoryName);
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("select * from QuestionSubCategory"
                + " where categoryID = ?");
        
        pst.setInt(1, questionCategoryID);
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            lst = new ArrayList<>();
            
            while(rs.next())
            {
                QuestionSubCategory obj = new QuestionSubCategory();
                obj.setId(rs.getInt(1));
                obj.setSubCategoryName(rs.getString(2));
                obj.setCategoryID(rs.getInt(3));
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


public ArrayList<QuestionSubCategory> getQuestionSubCategoriesByQuestionCategoryID(
int catid)
{
    ArrayList<QuestionSubCategory> lst = null;
    
//    int questionCategoryID = 
//            new QuestionCategoryDAO().getCategoryID(questionCategoryName);
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("select * from QuestionSubCategory"
                + " where categoryID = ?");
        
        pst.setInt(1, catid);
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            lst = new ArrayList<>();
            
            while(rs.next())
            {
                QuestionSubCategory obj = new QuestionSubCategory();
                obj.setId(rs.getInt(1));
                obj.setSubCategoryName(rs.getString(2));
                obj.setCategoryID(rs.getInt(3));
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

public String getSubCategoryName(int subcatId)
{
    String subcatname = "";
    
    try
    {
        con = DatabaseConnection.getConnection();
            
        pst = con.prepareStatement("select subCategoryName from QuestionSubCategory "
                    + "where id = ?");
            
            pst.setInt(1, subcatId);
            
            rs = pst.executeQuery();
            
            if(rs.isBeforeFirst())
            {
                rs.next();
                
                subcatname =  rs.getString("subCategoryName");
            }
            
            con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return subcatname;
}

}
