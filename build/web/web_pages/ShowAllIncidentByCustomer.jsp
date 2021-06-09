<%-- 
    Document   : ShowAllIncidentByCustomer
    Created on : May 7, 2019, 3:41:20 PM
    Author     : Ekta
--%>

<%@page import="dto.ReportedIncidentsByCustomer"%>
<%@page import="dao.ReportedIncidentsByCustomerDAO"%>
<%@page import="dto.Question"%>
<%@page import="dao.QuestionDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
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
                        <th>Expert Id</th>
                        <th>Question Title</th>
                        <th>Question Description</th>
                        <th>Description of Incident</th>
                        <th>Posted Date of Incident</th>
                    </tr>
                </thead>
                <tbody>
                    <% try {
                            QuestionDAO qd = new QuestionDAO();
                            ReportedIncidentsByCustomerDAO dao = new ReportedIncidentsByCustomerDAO();
                            
                            ArrayList<ReportedIncidentsByCustomer> lst = dao.getAllIncidentsByCustomerID((String)
                            session.getAttribute("customerid"));

                            for (ReportedIncidentsByCustomer rs : lst) {
                            Question qs = qd.getQuestionById(rs.getQuestionID());
                    %>

                    <tr>

                        <td><%=qs.getExpertID()%></td>
                        
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


