<%-- 
    Document   : addQuestionCat
    Created on : 13 Apr, 2019, 3:26:53 PM
    Author     : ay131
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.QuestionCategoryDAO"%>
<%@page import="dto.QuestionCategory" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String categoryName = request.getParameter("categoryName");
            QuestionCategoryDAO obj=new QuestionCategoryDAO();
           
            boolean i=obj.addQuestionCategory(categoryName);
            if(i)
                out.print("data save");
            else
                out.print("data not save");
            %>            
    </body>
</html>
