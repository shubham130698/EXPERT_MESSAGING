<%-- 
    Document   : ShowAllIncidentByExpert
    Created on : May 7, 2019, 3:36:31 PM
    Author     : Ekta
--%>

<%@page import="dto.Question"%>
<%@page import="dao.QuestionDAO"%>
<%@page import="dto.ReportedIncidentsByExpert"%>
<%@page import="dao.ReportedIncidentsByExpertDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
         <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2><b>Incident Raised</b></h2><br>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Customer Id</th>
                        <th>Question Title</th>
                       <th>Question Description</th>
                        <th>Description of Incident</th>
                        <th>Posted Date of Incident</th>
                    </tr>
                </thead>
                <tbody>
                    <% try {
                        QuestionDAO qd = new QuestionDAO();
                            ReportedIncidentsByExpertDAO dao = new ReportedIncidentsByExpertDAO();
                            
                            ArrayList<ReportedIncidentsByExpert> lst = dao.getAllIncidentsByExpertID((String)
                            session.getAttribute("expertid"));

                            for (ReportedIncidentsByExpert rs : lst) {
                            Question qs = qd.getQuestionById(rs.getQuestionID());
                    %>

                    <tr>

                        <td><%=qs.getCustomerID()%></td>
                        
                        <td><%=qs.getQuestionTitle()%></td>
                        
                        <td><%=qs.getQuestionDesc()%></td>
                        
                        <td><%=rs.getIncDesc()%></td>
                        
                        <td><%=rs.getPostedDate()%></td>
                        
                    </tr>

                <%
                        }
                    } catch (Exception e) {

                    }
                %>

                </tbody>
            </table>
            <div class="clearfix">
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item active"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item "><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>
        </div>
    </div>
   
        
    </body>
</html>

