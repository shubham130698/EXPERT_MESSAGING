<%-- 
    Document   : profile_setting_expert
    Created on : May 15, 2019, 12:28:19 PM
    Author     : Ekta
--%>


<%@page import="dao.ExpertDAO"%>
<%@page import="dto.Expert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ExpertDAO exp = new ExpertDAO();
  //  exp.setId((String)session.getAttribute("expertid"));
    
       Expert e=exp.getAllDataById((String)session.getAttribute("expertid"));
    %>
﻿<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from templates.scriptsbundle.com/knowledge/demo/profile-setting.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 07:35:09 GMT -->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="author" content="ScriptsBundle">
  <title>Expert messaging</title>
  <!-- =-=-=-=-=-=-= Favicons Icon =-=-=-=-=-=-= -->
  <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
  <!-- =-=-=-=-=-=-= Mobile Specific =-=-=-=-=-=-= -->
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
  <!-- =-=-=-=-=-=-= Bootstrap CSS Style =-=-=-=-=-=-= -->
  <link rel="stylesheet" href="css/bootstrap.css">
  <!-- =-=-=-=-=-=-= Template CSS Style =-=-=-=-=-=-= -->
  <link rel="stylesheet" href="css/style.css">
  <!-- =-=-=-=-=-=-= Font Awesome =-=-=-=-=-=-= -->
  <link rel="stylesheet" href="css/font-awesome.css">
  <!-- =-=-=-=-=-=-= Et Line Fonts =-=-=-=-=-=-= -->
  <link rel="stylesheet" href="css/et-line-fonts.css">
  	<!-- =-=-=-=-=-=-= Owl carousel =-=-=-=-=-=-= -->
	<link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="css/owl.style.css">
  <!-- =-=-=-=-=-=-= Google Fonts =-=-=-=-=-=-= -->
  <link href="../../../fonts.googleapis.com/cssd7e8.css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic|Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css">
  <!-- =-=-=-=-=-=-= Highliter Css =-=-=-=-=-=-= -->
  <link type="text/css" rel="Stylesheet" href="css/styles/shCoreDefault.css" />
  <!-- =-=-=-=-=-=-= Css Animation =-=-=-=-=-=-= -->
  <link type="text/css" rel="stylesheet" href="css/animate.min.css" />
  <!-- =-=-=-=-=-=-= Hover Dropdown =-=-=-=-=-=-= -->
  <link type="text/css" rel="stylesheet" href="css/bootstrap-dropdownhover.min.css" />
  <!-- JavaScripts -->
  <script src="js/modernizr.js"></script>
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
    <script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body>
  <!-- =-=-=-=-=-=-= PRELOADER =-=-=-=-=-=-= -->
  <div class="preloader"><span class="preloader-gif"></span>
  </div>
  <!-- =-=-=-=-=-=-= HEADER =-=-=-=-=-=-= -->
  <div class="top-bar">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-6 col-xs-4">
				<ul class="top-nav nav-left">
					<li><a href="index.jsp">Home</a>
					</li>
					<!--li class="hidden-xs"><a href="blog.jsp">Blog</a>
					</li//-->
					<li  class="hidden-xs"><a href="contact.jsp">Contact Us</a>
					</li>
				</ul>
			</div>
			<div class="col-lg-8 col-md-8 col-sm-6 col-xs-8">
				<ul class="top-nav nav-right">
					<!--li><a href="login.jsp"><i class="fa fa-lock" aria-hidden="true"></i>Login</a>
					</li>
					<li><a href="register.jsp"><i class="fa fa-user-plus" aria-hidden="true"></i>Signup</a>
					</li-->
					<li class="dropdown"> 
						<a class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown" data-animations="fadeInUp">
							<img class="img-circle resize" alt="" src="images/authors/13.png">
							<span  style="text-transform: lowercase" class="hidden-xs small-padding">
								<%
                                                                    String name=(String)session.getAttribute("expertid");
                                                                    out.print(name);
                                                                    %>
							 <i class="fa fa-caret-down"></i>
							</span>
						</a>
						<ul class="dropdown-menu ">
							<!--li><a href="profile.jsp"><i class=" icon-bargraph"></i> Dashboard</a></li//>
							<li><a href="profile-setting.jsp"><i class=" icon-gears"></i> Profile Setting</a></li-->
							<!--li><a href="question-list.jsp"><i class="icon-heart"></i> Questions</a></li-->
							<li><a href="logout.jsp"><i class="icon-lock"></i> Logout</a></li>
						</ul>
					 </li>
				</ul>
			</div>
		</div>
	</div>
</div>
  <!-- =-=-=-=-=-=-= HEADER Navigation =-=-=-=-=-=-= -->
  <div class="navbar navbar-default">
    <div class="container">
      <!-- header -->
      <div class="navbar-header">
        <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <!-- logo -->
        <a href="index.jsp" class="navbar-brand"><img class="img-responsive" alt="" src="images/logo.png">
        </a>
        <!-- header end -->
      </div>
      <!-- navigation menu -->
      <div class="navbar-collapse collapse">
        <!-- right bar -->
        <ul class="nav navbar-nav navbar-right">
          <!--li class="hidden-sm"><a href="how-work.jsp">How  It Works</a>
          </li//-->
          <!--li><a href="listing.jsp">Browse Questions</a>
          </li-->
          <li class="dropdown"> <a class="dropdown-toggle " data-hover="dropdown" data-toggle="dropdown" data-animations="fadeInUp">Pages <b class="caret"></b></a>
            <ul class="dropdown-menu">
              
              <li><a href="404.jsp">Error Page</a>
							</li>
              <!--li><a href="contact.jsp">Contact Us</a>
              </li-->
              <!--li><a href="contact-2.jsp">Contact With Map</a>
              </li//-->
            </ul>
          </li>
          <li>
            <div class="btn-nav"><a href="post-question.jsp" class="btn btn-primary btn-small navbar-btn">Post Question</a>
            </div>
          </li>
        </ul>
      </div>
      <!-- navigation menu end -->
      <!--/.navbar-collapse -->
    </div>
  </div>
  <!-- HEADER Navigation End -->

  <!-- =-=-=-=-=-=-= Main Area =-=-=-=-=-=-= -->
  <div class="main-content-area">

   
    <!-- =-=-=-=-=-=-= User Profile =-=-=-=-=-=-= -->
    <!--section id="user-profile" class="user-profile parallex">
      <div class="container">
        <!-- Row >
        <div class="row">

          <!--div class="col-md-12 col-xs-8 col-sm-8">
            <div class="profile-sec ">
              <div class="profile-head">
                <div class="col-md-8 col-xs-8 col-sm-8 no-padding">
                  <div class="profile-avatar">
                    <!--span><img class="img-responsive img-circle" alt="" src="images/authors/author-large.jpg"></span>
                    <div class="profile-name">
                      <h3>Expert Profile</h3>
                      <i>Expert Mesaaging System</i>
                      
                    </div>
                  </div>
                </div>
                
              </div>
            </div>
            <!-- Profile Sec >
          </div> 

        </div>
        <!-- Row End >
      </div>
      <!-- end container >
    </section-->

    <!-- =-=-=-=-=-=-= User Profile end =-=-=-=-=-=-= -->
    
 <!-- =-=-=-=-=-=-= User Form Settings =-=-=-=-=-=-= -->
    <section class="section-padding-80" id="login">
      <div class="container">
        <div class="row">
          <div class="col-sm-4 col-md-3">

            
            </div>

            <div class="col-md-5">

            <div class="box-panel">
              
              <!-- form login -->
              <form action="update_profile_expert.jsp" method="post">
                  
                <div class="form-group">
                  <label>Password</label>
                  <input type="password" placeholder="Enter your Password" value="<%=e.getPassword()%>" name="password" class="form-control" id="myInput"><br>
                  <input type="checkbox" onclick="myFunction()"> 
                  </div>
                  <div class="form-group">
                  <label>Category ID</label>
                  <input type="text" placeholder="Enter category" value="<%=e.getCategoryID()%>" name="categoryID" class="form-control">
                </div>
                <div class="form-group">
                  <label>Sub-Category ID</label>
                  <input type="text" placeholder="Enter subcategory" value="<%=e.getSubCategoryID()%>" name="subCategoryID" class="form-control">
                </div>
                <div>
                    <center><button type="submit" class="btn btn-primary btn-lg">  Update My Profile</button></center>
                </div>
              </form>
                

            </div>
          </div>

          <div class="clearfix"></div>
        </div>
      </div>
      <!-- end container -->
    </section>
 
<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>

    <!--Footer Bottom-->
    <div class="footer-copyright">
      <div class="auto-container clearfix">
        <!--Copyright-->
        <div class="copyright text-center">Copyright 2019 &copy; Theme Created By <a>Ypslison IT Solution</a> All Rights Reserved</div>
      </div>
    </div>
  </footer>

  <!-- =-=-=-=-=-=-= JQUERY =-=-=-=-=-=-= -->
  <script src="js/jquery.min.js"></script>
  <!-- Bootstrap Core Css  -->
  <script src="js/bootstrap.min.js"></script>
  <!-- Jquery Smooth Scroll  -->
  <script src="js/jquery.smoothscroll.js"></script>
  <!-- Jquery Easing -->
  <script type="text/javascript" src="js/easing.js"></script>
  <!-- Jquery Counter -->
  <script src="js/jquery.countTo.js"></script>
  <!-- Jquery Waypoints -->
  <script src="js/jquery.waypoints.js"></script>
  <!-- Jquery Appear Plugin -->
  <script src="js/jquery.appear.min.js"></script>
  <!-- Carousel Slider  -->
  <script src="js/carousel.min.js"></script>
  <!-- Jquery Parallex -->
  <script src="js/jquery.stellar.min.js"></script>
  <!--Style Switcher -->
  <script src="js/bootstrap-dropdownhover.min.js"></script>
  <!-- Include jQuery Syntax Highlighter -->
  <script type="text/javascript" src="scripts/shCore.js"></script>
  <script type="text/javascript" src="scripts/shBrushPhp.js"></script>
  <!-- Template Core JS -->
  <script src="js/custom.js"></script>
</body>


<!-- Mirrored from templates.scriptsbundle.com/knowledge/demo/profile-setting.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 07:35:10 GMT -->
</html>
