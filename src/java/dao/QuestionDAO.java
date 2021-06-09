package dao;

import dbcon.DatabaseConnection;
import java.sql.*;
import dto.Question;
import java.util.ArrayList;

public class QuestionDAO {
    
Connection con ;
PreparedStatement pst;
ResultSet rs;

public boolean addQuestion(Question obj)
{
    boolean b = false;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("insert into Question(questionDesc,status,visibility,"
                + "categoryID,subCategoryID,customerID,expertID,questionTitle) values(?,?,?,?,?,?,?,?)");
        
        pst.setString(1, obj.getQuestionDesc());
        pst.setBoolean(2, false);
        pst.setBoolean(3, obj.isVisibility());
        pst.setInt(4, obj.getCategoryID());
        pst.setInt(5, obj.getSubCategoryID());
        pst.setString(6, obj.getCustomerID());
        pst.setString(7, obj.getExpertID());
        pst.setString(8, obj.getQuestionTitle());
        
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

public ArrayList<Question> getAllQuestionsByCustomer(String customerID)
{
    ArrayList<Question> qlist = null;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("select * from Question where customerID = ?");
        
        pst.setString(1, customerID);
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            qlist = new ArrayList<>();
            
            while(rs.next())
            {
                Question q = new Question();
                q.setId(rs.getInt(1));
                q.setQuestionTitle(rs.getString(2));
                q.setQuestionDesc(rs.getString(3));
                q.setPostedDate(rs.getTimestamp(4)+"");
                q.setStatus(rs.getBoolean(5));
                q.setVisibility(rs.getBoolean(6));
                q.setCategoryID(rs.getInt(7));
                q.setSubCategoryID(rs.getInt(8));
                q.setCustomerID(rs.getString(9));
                q.setExpertID(rs.getString(10));
                
                qlist.add(q);
            }
        }
        con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return qlist;
}

public ArrayList<Question> getAllUnAnsweredQuestionsForExpert(String expertID)
{
    ArrayList<Question> qlist = null;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("select * from Question where expertID = ? and "
                + "status = false and id not in (select questionID from reportedincidentsbyexperts)");
        
        pst.setString(1, expertID);
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            qlist = new ArrayList<>();
            
            while(rs.next())
            {
                Question q = new Question();
                q.setId(rs.getInt(1));
                q.setQuestionTitle(rs.getString(2));
                q.setQuestionDesc(rs.getString(3));
                q.setPostedDate(rs.getTimestamp(4)+"");
                q.setStatus(rs.getBoolean(5));
                q.setVisibility(rs.getBoolean(6));
                q.setCategoryID(rs.getInt(7));
                q.setSubCategoryID(rs.getInt(8));
                q.setCustomerID(rs.getString(9));
                q.setExpertID(rs.getString(10));
                
                qlist.add(q);
            }
        }
        con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return qlist;
}

public ArrayList<Question> getAllQuestionsForExpert(String expertID)
{
    ArrayList<Question> qlist = null;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("select * from Question where expertID = ?");
        
        pst.setString(1, expertID);
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            qlist = new ArrayList<>();
            
            while(rs.next())
            {
                
                Question q = new Question();
                q.setId(rs.getInt(1));
                q.setQuestionTitle(rs.getString(2));
                q.setQuestionDesc(rs.getString(3));
                q.setPostedDate(rs.getTimestamp(4)+"");
                q.setStatus(rs.getBoolean(5));
                q.setVisibility(rs.getBoolean(6));
                q.setCategoryID(rs.getInt(7));
                q.setSubCategoryID(rs.getInt(8));
                q.setCustomerID(rs.getString(9));
                q.setExpertID(rs.getString(10));
                
                qlist.add(q);
            }
        }
        con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return qlist;
}

public boolean changeQuestionStatus(int questionID)
{
    boolean b = false;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("update Question set status = true where id = ?");
        
        pst.setInt(1, questionID);
        
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

public boolean deleteQuestion(int questionID)
{
    boolean b = false;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("delete from Question where id = ?");
        
        pst.setInt(1, questionID);
        
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

public Question getQuestionById(int questionid)
{
    Question qs = null;
    
    try
    {
    con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("select * from Question where id = ?");
        
        pst.setInt(1, questionid);
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            if(rs.next())
            {  
                qs = new Question();
                qs.setId(rs.getInt(1));
                qs.setQuestionTitle(rs.getString(2));
                qs.setQuestionDesc(rs.getString(3));
                qs.setPostedDate(rs.getTimestamp(4)+"");
                qs.setStatus(rs.getBoolean(5));
                qs.setVisibility(rs.getBoolean(6));
                qs.setCategoryID(rs.getInt(7));
                qs.setSubCategoryID(rs.getInt(8));
                qs.setCustomerID(rs.getString(9));
                qs.setExpertID(rs.getString(10)); 
            }
        }
        con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return qs;
}

public ArrayList<Question> getAllUnAnsweredQuestionsForCustomer(String customerID)
{
    ArrayList<Question> qlist = null;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("select * from Question where customerID = ? and "
                + "status = false");
        
        pst.setString(1, customerID);
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            qlist = new ArrayList<>();
            
            while(rs.next())
            {
                Question q = new Question();
                q.setId(rs.getInt(1));
                q.setQuestionTitle(rs.getString(2));
                q.setQuestionDesc(rs.getString(3));
                q.setPostedDate(rs.getTimestamp(4)+"");
                q.setStatus(rs.getBoolean(5));
                q.setVisibility(rs.getBoolean(6));
                q.setCategoryID(rs.getInt(7));
                q.setSubCategoryID(rs.getInt(8));
                q.setCustomerID(rs.getString(9));
                q.setExpertID(rs.getString(10));
                
                qlist.add(q);
            }
        }
        con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return qlist;
}

public String getCustomerByQuestion(int questionid)
{
    String cid = null;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("select customerID from Question where id = ?");
        pst.setInt(1,questionid);
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            rs.next();
            cid = rs.getString(1);
        }
        
        con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return cid;
}


public String getExpertByQuestion(int questionid)
{
    String exid = null;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("select expertID from Question where id = ?");
        pst.setInt(1,questionid);
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            rs.next();
            exid = rs.getString(1);
        }
        
        con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return exid;
}


public ArrayList<Integer> getQuestionSearchResult(String searchTerm)
{
   ArrayList<Integer> alist = null;
   
   try
   {
      con = DatabaseConnection.getConnection();
      
      Statement st=con.createStatement();
      
      //pst.setString(1, searchTerm);
      //pst.setString(2, searchTerm);
      
      rs=st.executeQuery("SELECT id FROM question WHERE  visibility = true and questionDesc LIKE '%"+searchTerm+"%' OR "
              + "questionTitle LIKE '%"+searchTerm+"%' ");
      
      if(rs.isBeforeFirst())
        {
            alist = new ArrayList<>();
            
             while(rs.next())
             {
                alist.add(rs.getInt("id"));
             }
        }
       
      con.close();
   }
   catch(Exception e)
   {
     e.printStackTrace();
   }
   return alist;
}

}
