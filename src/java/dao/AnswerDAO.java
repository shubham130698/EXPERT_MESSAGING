package dao;

import dbcon.DatabaseConnection;
import java.sql.*;
import dto.Answer;
import java.util.ArrayList;

public class AnswerDAO {
    
Connection con ;
PreparedStatement pst;
ResultSet rs;

public boolean addAnswer(Answer obj)
{
    boolean b = false;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("insert into Answer(ansDesc,questionID,expertID) "
                + "values(?,?,?)");
        
        pst.setString(1, obj.getAnsDesc());
        pst.setInt(2, obj.getQuestionID());
        pst.setString(3, obj.getExpertID());
        
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

public ArrayList<Answer> getAllAnswersForCustomerQuestions(String customerID)
{
    ArrayList<Answer> alist = null;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("select Answer.id,Answer.ansDesc,Answer.postedDate,"
                + "Answer.questionID,Answer.expertID from Question Right Outer Join Answer "
                + "ON Question.id = Answer.questionID WHERE Question.customerID = ? and id not in (select questionID from reportedincidentsbycustomer)");
        
        pst.setString(1, customerID);
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            alist = new ArrayList<>();
            
            while(rs.next())
            {
                Answer a = new Answer();
                a.setId(rs.getInt(1));
                a.setAnsDesc(rs.getString(2));
                a.setPostedDate(rs.getTimestamp(3)+"");
                a.setQuestionID(rs.getInt(4));
                a.setExpertID(rs.getString(5));
                
                alist.add(a);
            }
        }
        con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return alist;
}

public ArrayList<Answer> getAnswerSearchResult(ArrayList<Integer> qidlist)
{
    ArrayList<Answer> anslist = new ArrayList<>();
    
    try
    {
        for(Integer id : qidlist)
        {
            Answer a = getAnswerByQuestion(id);
            if(a != null)
            {
                anslist.add(a);
            }
        }
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return anslist;
}
public Answer getAnswerByQuestion(int questionID)
{
    Answer ans = null;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("select * From Answer WHERE questionID = ?");
        
        pst.setInt(1, questionID);
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            ans = new Answer();
            
            if(rs.next())
            {
                ans.setId(rs.getInt(1));
                ans.setAnsDesc(rs.getString(2));
                ans.setPostedDate(rs.getTimestamp(3)+"");
                ans.setQuestionID(rs.getInt(4));
                ans.setExpertID(rs.getString(5));
            }
        }
        con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return ans;
}

public ArrayList<Answer> getAllQuestionsAndAnswersByExpert(String expertID)
{
    ArrayList<Answer> alist = null;
    
    try
    {
        con = DatabaseConnection.getConnection();
        
        pst = con.prepareStatement("select Answer.id,Answer.ansDesc,Answer.postedDate,"
                + "Answer.questionID,Answer.expertID from Question Right Outer Join Answer "
                + "ON Question.id = Answer.questionID WHERE Question.expertID = ?");
        
        pst.setString(1, expertID);
        
        rs = pst.executeQuery();
        
        if(rs.isBeforeFirst())
        {
            alist = new ArrayList<>();
            
            while(rs.next())
            {
                Answer a = new Answer();
                a.setId(rs.getInt(1));
                a.setAnsDesc(rs.getString(2));
                a.setPostedDate(rs.getTimestamp(3)+"");
                a.setQuestionID(rs.getInt(4));
                a.setExpertID(rs.getString(5));
                
                alist.add(a);
            }
        }
        con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return alist;
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
  
}
