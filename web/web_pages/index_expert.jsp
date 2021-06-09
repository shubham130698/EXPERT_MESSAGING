<%@page import="dto.Question"%>
<%@page import="java.util.List"%>
<%@page import="dao.QuestionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html lang="en">
    <!-- Mirrored from templates.scriptsbundle.com/knowledge/demo/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 07:33:11 GMT -->
    <head>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <meta charset="utf-8">
  
  <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'/>
        <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        
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
        <!-- =-=-=-=-=-=-= Google Fonts =-=-=-=-=-=-= -->
        <link href="../../../fonts.googleapis.com/cssd7e8.css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic|Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css">
        <!-- =-=-=-=-=-=-= Owl carousel =-=-=-=-=-=-= -->
        <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="css/owl.style.css">
        <!-- =-=-=-=-=-=-= Highliter Css =-=-=-=-=-=-= -->
        <link type="text/css" rel="stylesheet" href="css/styles/shCoreDefault.css" />
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
                            <!--li><a href="login_form.jsp"><i class="fa fa-lock" aria-hidden="true"></i>Login</a>
                            </li>
                            <li><a href="register.jsp"><i class="fa fa-user-plus" aria-hidden="true"></i>Signup</a>
                            </li-->
                            <li class="dropdown"> 
                                <a class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown" data-animations="fadeInUp">
                                    <img class="img-circle resize" alt="" src="images/authors/13.png">
                                    <span style="text-transform: lowercase" class="hidden-xs small-padding">
                                         <%
                                                                    String name=(String)session.getAttribute("expertid");
                                                                    out.print(name);
                                                               %>
                                        <i class="fa fa-caret-down"></i>
                                    </span>
                                </a>
                                <ul class="dropdown-menu ">
                                    <!--li><a href="profile.jsp"><i class=" icon-bargraph"></i> Dashboard</a></li//-->
                                    <li><a href="profile_setting_expert.jsp"><i class=" icon-gears"></i> Profile Setting</a></li>
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
                    <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">	<span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- logo -->
                    <a href="index.jsp" class="navbar-brand">
                        <img class="img-responsive" alt="" src="images/logo.png">
                    </a>
                    <!-- header end -->
                </div>
                <!-- navigation menu -->
                <div class="navbar-collapse collapse">
                    <!-- right bar -->
                    <ul class="nav navbar-nav navbar-right">
                        <!--li class="hidden-sm"><a href="how-work.jsp">How  It Works</a//-->
                        </li>
                        <!--li><a href="listing.jsp">Browse Questions</a>
                        </li-->
                        <li class="dropdown"> <a class="dropdown-toggle " data-hover="dropdown" data-toggle="dropdown" data-animations="fadeInUp">Pages <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                
                                <li><a href="404.jsp">Error Page</a>
                                </li>
                                
                            </ul>
                        </li>
                        <li>
                            <div class="btn-nav"><p href="" class="btn btn-primary btn-small navbar-btn">EXPERT HOME</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- navigation menu end -->
                <!--/.navbar-collapse -->
            </div>
        </div>
        <!-- HEADER Navigation End -->
        <!-- =-=-=-=-=-=-= HOME =-=-=-=-=-=-= -->
        <!--div class="full-section search-section">
                <div class="search-area container">
                        <h3 class="search-title">Have a Question?</h3>
                        <p class="search-tag-line">If you have any question you can ask below or enter what you are looking for!</p>
                        <form autocomplete="off" method="get" class="search-form clearfix" id="search-form">
                                <input type="text" title="* Please enter a search term!" placeholder="Type your search terms here" class="search-term " autocomplete="off">
                                <input type="submit" value="Search" class="search-btn">
                        </form>
                </div>
        </div-->
        <!-- =-=-=-=-=-=-= HOME END =-=-=-=-=-=-= -->
        <!-- =-=-=-=-=-=-= Main Area =-=-=-=-=-=-= -->
        <div class="main-content-area">
            <!-- =-=-=-=-=-=-= Latest Questions  =-=-=-=-=-=-= -->
            <section class="white question-tabs padding-bottom-80" id="latest-post">
                <div class="container">
                    <div class="row">
                        <!-- Content Area Bar -->
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <!-- Tabs -->
                                    <ul class="nav panel-tabs">
                                        <li class="active"> <a data-toggle="tab" href="#tab1"><i class="icofont icon-ribbon"></i><span class="hidden-xs">Unanswered Questions</span></a> 
                                        </li>
                                        <li> <a data-toggle="tab" href="#tab2"><i class="icofont icon-layers"></i><span class="hidden-xs">Answered Questions</span></a> 
                                        </li>
                                        <li> <a data-toggle="tab" href="#tab3"><i class="icofont icon-layers"></i><span class="hidden-xs">Incident Raised</span></a> 
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="tab-content">
                                    <div id="tab1" class="tab-pane active">
                                        <!-- Question Listing -->
                                        <jsp:include page="ShowAllQuestionsToExpert.jsp"/>
                                        <!-- Question Listing End -->
                                    </div>
                                    <div id="tab2" class="tab-pane">
                                        <!-- Question Listing -->
                                        <jsp:include page="ShowAllAnswersToExpert.jsp"/> 
                                    </div>
                                        <!-- Question Listing End -->
                                   <div id="tab3" class="tab-pane">
                                        <!-- Question Listing -->
                                        <jsp:include page="ShowAllIncidentByExpert.jsp"/> 
                                    </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- end container -->
            </section>
            
        </section>
        <!-- =-=-=-=-=-=-= Blog & News end =-=-=-=-=-=-= -->
        <!-- =-=-=-=-=-=-= Testimonials =-=-=-=-=-=-= -->
        <section data-stellar-background-ratio="0.1" class="testimonial-bg parallex">
			<div class="container">
				<!-- Row -->
				<div class="row">
					<!-- Blog Grid -->
					<div class="col-md-8 ">
						<div id="owl-slider" class="happy-client">
							<div class="item"> <i class="fa fa-quote-left"> </i>
								<p>Expert Messaging System is a question and answer site for professional and enthusiasts. It features questions and answers on a wide variety of topics ranging from music , sports , business , art , cookery , health etc. The website serves as a platform for users to ask questions and assigned experts for the topics to answer those questions.</p>
								<div class="client-info-wrap clearfix">
									<div class="client-img">
										<!--img class="img-circle" src="../../../theemon.com/d/designagency/LivePreview/assets/images/client-img-two.jpg" alt="" /-->
									</div>
									<div class="client-info"> <strong>Expert Messaging</strong>
									</div>
								</div>
							</div>
							<div class="item"> <i class="fa fa-quote-left"> </i>
								<p>Expert Messaging System is a question and answer site for professional and enthusiasts. It features questions and answers on a wide variety of topics ranging from music , sports , business , art , cookery , health etc. The website serves as a platform for users to ask questions and assigned experts for the topics to answer those questions.</p>
								<div class="client-info-wrap clearfix">
									<div class="client-img">
										<!--img class="img-circle" src="../../../theemon.com/d/designagency/LivePreview/assets/images/client-img-two.jpg" alt="" /-->
									</div>
									<div class="client-info"> <strong>Expert Messaging</strong> 
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Blog Grid -->
					<!-- Blog Grid -->
					<div class="col-md-4 no-padding">
						<div class="success-stories">
							<div class="main-heading text-center">
								<h2>Admin Detail</h2>
								<hr class="main">
                                                                <p><Strong>Email-</strong>ektadiwakar536@gmail.com<br><Strong>Contact-</Strong>8120023700</p>
							</div>
						</div>
					</div>
					<!-- Blog Grid -->
					<div class="clearfix"></div>
				</div>
				<!-- Row End -->
			</div>
			<!-- end container -->
		</section>
        
    </div>
    
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


<!-- Mirrored from templates.scriptsbundle.com/knowledge/demo/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 07:34:51 GMT -->
</html>