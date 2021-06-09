
<%@page import="dao.ExpertDAO"%>
<%@page import="dto.Question"%>
<%@page import="dao.QuestionDAO"%>
<%
    Question q = new Question();
    
    q.setQuestionTitle(request.getParameter("questionTitle"));
    q.setCategoryID(Integer.parseInt(request.getParameter("categoryID")));
    q.setSubCategoryID(Integer.parseInt(request.getParameter("subCategoryID")));
    q.setQuestionDesc(request.getParameter("questionDesc"));
    
    String visibility = request.getParameter("visibility");
    
    if(visibility != null)
        q.setVisibility(false);
    else
        q.setVisibility(true);
    
    q.setCustomerID((String)session.getAttribute("customerid"));
 
    
    ExpertDAO edao = new ExpertDAO();
    
    q.setExpertID(edao.getExpertByCatSubCat(q.getCategoryID(), q.getSubCategoryID()));
    
    QuestionDAO qd = new QuestionDAO();
    
    boolean b = qd.addQuestion(q);
    
    if(b)
    {
         out.println("<script src='js/sweetalert2.all.js' type='text/javascript'></script>");
        out.println("<script src='js/jquery.min.js' type='text/javascript'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Verification Message' ,  'Your question will be posted successfully' ,"
                + "  'warning' );");
        out.println("});");
        out.println("</script>");
        %>
        <jsp:include page="post-question.jsp"/>
        <%
    }
    else
    {
    out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Verification Message' ,  'Your question will not be posted' ,"
                + "  'warning' );");
        out.println("});");
        out.println("</script>");
        %>
        <jsp:include page="post-question.jsp"/>
        <%
    }
%>