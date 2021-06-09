<%@page import="dao.AdminDAO"%>
<%@page import="dto.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String adminid = request.getParameter("adminid");
    
    Admin exp = new Admin();
    exp.setId(adminid);
    
    AdminDAO ado = new AdminDAO();
    
    boolean b = ado.forgotPassword(exp);
    
    if(b)
    out.print("success");
    else
    out.print("failure");
%>