
<%@page import="dao.AdminDAO"%>
<%@page import="dto.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String id = request.getParameter("id");
            String password = request.getParameter("password");
            Admin a=new Admin(id,password);    
            AdminDAO obj = new AdminDAO();
            boolean i=obj.checkUser(a);
                              
                    if(i)
                    {
        %>
      <jsp:forward page="index_admin.jsp"></jsp:forward>
        <%
                    }
                    else
                    {
                      out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Warning' ,  'invalid user-id or password !!!' ,"
                + "  'warning' );");
        out.println("});");
        out.println("</script>");
%> 
<jsp:include page="login_form.jsp"/>
        <%
            }
            %>
    </body>
</html>
