<%-- 
    Document   : ShowAllExpertsIncident
    Created on : May 7, 2019, 11:43:19 PM
    Author     : Ekta
--%>

<%@page import="dao.CustomerDAO"%>
<%@page import="dao.ExpertDAO"%>
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
        
        <script>
         function clickAndDisable(link) {
     // disable subsequent clicks
     link.onclick = function(event) {
        event.preventDefault();
     }
   }  
        </script>
        
    </head>
    <body>
         <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8">
                        <h2><b>Incident Raised By Expert To Customer</b></h2><br>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                          <th>Expert ID</th>
                          <th>Customer Id</th>
                        <th>Question Title</th>
                        <th>Question Description</th>
                        <th>Description of Incident</th>
                        <th>Posted Date of Incident</th>
                        <th>Blocked </th>
                    </tr>
                </thead>
                <tbody>
                    <% try {
                            CustomerDAO da = new CustomerDAO();    
                            QuestionDAO qd = new QuestionDAO();
                            ReportedIncidentsByExpertDAO dao = new ReportedIncidentsByExpertDAO();
                            
                            ArrayList<ReportedIncidentsByExpert> lst = dao.getAllIncidentsByExpert();

                            for (ReportedIncidentsByExpert rs : lst) {
                           
                                Question qs = qd.getQuestionById(rs.getQuestionID());
                    %>

                    <tr>

                        <td><%=qs.getExpertID()%></td>
                        
                        <td><%=qs.getCustomerID()%></td>
                        
                        <td><%=qs.getQuestionTitle()%></td>
                        
                        <td><%=qs.getQuestionDesc()%></td>
                        
                        <td><%=rs.getIncDesc()%></td>
                        
                        <td><%=rs.getPostedDate()%></td>
                        
                        <td>
                            <a href="block_customer.jsp?id=<%=qs.getCustomerID()%>" onclick="clickAndDisable(this);" class="delete"  data-toggle="modal"><img title="BLOCK" style="height: 30px; width: 30px;"  src="images/33.png"></a>
                        </td>
                        
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

