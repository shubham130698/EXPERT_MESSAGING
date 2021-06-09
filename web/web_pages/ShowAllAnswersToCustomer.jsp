<%@page import="dto.Answer"%>
<%@page import="dao.AnswerDAO"%>
<%@page import="dto.Question"%>
<%@page import="dao.QuestionDAO"%>
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
        
        <style>
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
 width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 30%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
        
    </head>
    <body>
         <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2> Answers For Your Question</b></h2><br>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Question Title</th>
                        <th>Question Description</th>
                        <th>Answer for you</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                            AnswerDAO ado = new AnswerDAO();
                            ArrayList<Answer> anslist = ado.getAllAnswersForCustomerQuestions(
                                    (String)session.getAttribute("customerid"));

                            if(anslist != null)
                            {
                            for (Answer ans : anslist) {
                                QuestionDAO qd = new QuestionDAO();
                                int questionid = ans.getQuestionID();
                    %>
                    <tr>

                        <td><%=qd.getQuestionById(questionid).getQuestionTitle()%></td>

                        <td><%=qd.getQuestionById(questionid).getQuestionDesc()%></td>
                        
                        <td><%=ans.getAnsDesc()%> <br> <%=ans.getPostedDate()%> </td>
                        <input type="hidden" id="hid_ques_id<%=ans.getId()%>" value="<%=ans.getId()%>"/>
                        <td> <button id="myBtn<%=ans.getId()%>" onclick="openMyDialog(<%=ans.getId()%>)">Raise Complaint</button></td>   
                    </tr>
                <%}}%>

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
        
<!-- The Modal -->
<!-- The Modal -->
<center>
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <table>
        <tr>
            <td> <center><b>Enter Complaint Description : </b></center></td>
        </tr>
        <tr class="blank_row">
            <td bgcolor="#FFFFFF" >&nbsp;</td>
        </tr>
        <tr>
            <td>
                <textarea id="incDesc" name="incDesc" cols="40" rows="5"></textarea>
            </td>
        </tr>
        <tr class="blank_row">
            <td bgcolor="#FFFFFF" >&nbsp;</td>
        </tr>
        <tr>
            <td><center><button id="btnRaise" class="btn btn-danger" onclick="addComplaint()">Post Complaint</button></center></td>
        </tr>
    </table>
  </div>

</div>
</center>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that posts complaint
var btnRaise = document.getElementById("btnRaise");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

var questionid = 0;

// When the user clicks the button, open the modal 
function openMyDialog(id)
{
  modal.style.display = "block";
  questionid = id;
}

function addComplaint(){
    
    var incDesc = document.getElementById("incDesc").value;
    
    var url="AddComplaintByCustomer.jsp?questionid="+questionid+"&incDesc="+incDesc;

    modal.style.display = "none";
    
            if(window.XMLHttpRequest){
            request=new XMLHttpRequest();
            }
            else if(window.ActiveXObject){
            request=new ActiveXObject("Microsoft.XMLHTTP");
            }

            try
            {
            request.onreadystatechange=getComplainResponse;
            request.open("GET",url,true);
            request.send();
            }
            catch(e)
            {
            alert("Unable to connect to server");
            }
}


function getComplainResponse()
{
    if(request.readyState==4){
            var val=request.responseText;
                if(val.trim() == "success")
                {
                    alert("Your complaint has been raised");
                    window.location.reload(true);
                }
                else
                {
                    alert("Your complaint has not been raised");
                }
            }
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
  alert(questionid);
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

</script>


    </body>
</html>
