<%-- 
    Document   : Check
    Created on : May 12, 2019, 6:09:48 PM
    Author     : Ekta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%             
         String user_id = (String)session.getAttribute("customerid");
         if(user_id == null) 
         {
             out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Warning  Message' ,  'You must have to login first to search a question!!!' ,"
                + "  'warning' );");
        out.println("});");
        out.println("</script>");

         }
         %>
       
    </body>
</html>
