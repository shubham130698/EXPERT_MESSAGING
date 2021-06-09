<%-- 
    Document   : show_usertable
    Created on : 11 Apr, 2019, 1:12:18 PM
    Author     : ay131
--%>

<%@page import="dao.CustomerDAO"%>
<%@page import="dto.Customer"%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>password</th>
                    <th>firstname</th>
                    <th>lastname</th>
                    <th>mobilno</th>
                </tr>
            </thead>
           
            <%
                 CustomerDAO obj=new  CustomerDAO();
                
               ArrayList<Customer> lst= obj.getAllCustomers();  

            for (int i=0;i<lst.size();i++) {
                
                         
            %>
            <tbody>
                <tr>
                    <td><%=lst.get(i).getId()%></td>
                   
                    <td><%=lst.get(i).getPassword()%></td>
                    <td><%=lst.get(i).getFirstName()%></td>
                    <td><%=lst.get(i).getLastName()%></td>
                    <td><%=lst.get(i).getMobileNumber()%></td>
                    <td><a href="delete.jsp?id=<%=lst.get(i).getId()%>">delete </a></td>
                
                </tr>

            </tbody>
            <%}%>
        </table>

    </body>
</html>
