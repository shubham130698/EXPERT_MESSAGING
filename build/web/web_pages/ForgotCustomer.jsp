<%@page import="dao.CustomerDAO"%>
<%@page import="dto.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String custid = request.getParameter("custid");
    
    Customer  c = new Customer();
    c.setId(custid);
    
    CustomerDAO cdo = new CustomerDAO();
    
    boolean b = cdo.forgotPassword(c);
    
    if(b)
    out.print("success");
    else
    out.print("failure");
%>