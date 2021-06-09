<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from templates.scriptsbundle.com/knowledge/demo/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 07:33:11 GMT -->
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
                                                                    String name=(String)session.getAttribute("customerid");
                                                                    out.print(name);
                                                                    
                                                                    %>
							 <i class="fa fa-caret-down"></i>
                                                        </span>
						
						</a>
						<ul class="dropdown-menu ">
							<!--li><a href="profile.jsp"><i class=" icon-bargraph"></i> Dashboard</a></li//-->
							<li><a href="profile-setting.jsp"><i class=" icon-gears"></i>Customer Profile Setting</a></li>
							<!--li><a href="question-list.jsp"><i class="icon-heart"></i> Questions</a></li-->
							<li><a href="logout.jsp"><i class="icon-lock"></i> Logout</a>
                                                           
                                                        </li>
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
					<!--li class="hidden-sm"><a href="how-work.jsp">How  It Works</a//>
					</li-->
					<!--li><a href="listing.jsp">Browse Questions</a>
					</li-->
					<li class="dropdown"> <a class="dropdown-toggle " data-hover="dropdown" data-toggle="dropdown" data-animations="fadeInUp">Pages <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<!--li><a href="index.jsp">Home </a>
							</li-->
							<!--li><a href="index2.jsp">Home 2</a>
							</li//-->
							<!--li><a href="question-detail.jsp">Question Detail</a>
							</li-->
							<!--li><a href="blog-1.jsp">Blog RightSide Bar</a>
							</li//-->
							<!--li><a href="blog-2.jsp">Blog LeftSide Bar</a>
							</li//-->
							<!--li><a href="blog-detial.jsp">Blog Single</a//>
							</li//-->
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
	<!-- =-=-=-=-=-=-= HOME =-=-=-=-=-=-= -->
	<div class="full-section search-section">
		<div class="search-area container">
			<h3 class="search-title">Have a Question?</h3>
			<p class="search-tag-line">If you have search any question you can write or enter what you are looking for!</p>
			<form autocomplete="off" method="get" class="search-form clearfix" id="search-form" action="ShowSearchResult.jsp">
                            <input type="text" title="* Please enter a search term!" placeholder="Type your search terms here" class="search-term " autocomplete="off" name="search">
				<input type="submit" value="Search" class="search-btn">
			</form>
		</div>
	</div>
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
                                        <li class="active"> <a data-toggle="tab" href="#tab1"><i class="icofont icon-ribbon"></i><span class="hidden-xs">Answered Questions</span></a> 
                                        </li>
                                        <li> <a data-toggle="tab" href="#tab2"><i class="icofont icon-layers"></i><span class="hidden-xs">Unanswered Questions</span></a> 
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
                                        <jsp:include page="ShowAllAnswersToCustomer.jsp"/>
                                        <!-- Question Listing End -->
                                    </div>
                                    <div id="tab2" class="tab-pane">
                                        <!-- Question Listing -->
                                        <jsp:include page="ShowAllQuestionsToCustomer.jsp"/> 
                                    </div>
                                        <!-- Question Listing End -->
                                   <div id="tab3" class="tab-pane">
                                        <!-- Question Listing -->
                                        <jsp:include page="ShowAllIncidentByCustomer.jsp"/> 
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

		<!-- =-=-=-=-=-=-= Latest Questions  End =-=-=-=-=-=-= -->
		<!-- =-=-=-=-=-=-= SEPARATOR Fun Facts =-=-=-=-=-=-= -->
		<!--div class="parallex section-padding fun-facts-bg text-center" data-stellar-background-ratio="0.1">
			<div class="container">
				<div class="row">
					<!-- countTo -->
					<!--div class="col-xs-6 col-sm-3 col-md-3">
						<div class="statistic-percent" data-perc="356">
							<div class="facts-icons"> <span class="icon-trophy"></span> 
							</div>
							<div class="fact"> <span class="percentfactor">356</span>
								<p>Happy Clients</p>
							</div>
							<!-- end fact -->
						<!--/div//-->
						<!-- end statistic-percent -->
					<!--/div>
					<!-- end col-xs-6 col-sm-3 col-md-3 -->
					<!-- countTo -->
					<!--div class="col-xs-6 col-sm-3 col-md-3">
						<div class="statistic-percent" data-perc="126">
							<div class="facts-icons"> <span class="icon-trophy"></span> 
							</div>
							<div class="fact"> <span class="percentfactor">126</span>
								<p>Order Received</p>
							</div>
							<!-- end fact -->
						<!--/div//-->
						<!-- end statistic-percent -->
					<!--/div//-->
					<!-- end col-xs-6 col-sm-3 col-md-3 -->
					<!-- countTo -->
					<!--div class="col-xs-6 col-sm-3 col-md-3">
						<div class="statistic-percent" data-perc="274">
							<div class="facts-icons"> <span class="icon-chat"></span> 
							</div>
							<div class="fact"> <span class="percentfactor">274</span>
								<p>Free Delivery</p>
							</div>
							<!-- end fact -->
						<!--/div//-->
						<!-- end statistic-percent -->
					<!--/div>
					<!-- end col-xs-6 col-sm-3 col-md-3 -->
					<!-- countTo -->
					<!--div class="col-xs-6 col-sm-3 col-md-3">
						<div class="statistic-percent" data-perc="434">
							<div class="facts-icons"> <span class="icon-megaphone"></span> 
							</div>
							<div class="fact"> <span class="percentfactor">434</span>
								<p>Completed Projects</p>
							</div>
							<!-- end fact -->
						<!--/div>
						<!-- end statistic-percent -->
					<!--/div>
					<!-- end col-xs-6 col-sm-3 col-md-3 -->
				<!--/div>
				<!-- End row -->
			<!--/div>
			<!-- end container -->
		<!--/div>
		<!-- =-=-=-=-=-=-= SEPARATOR END =-=-=-=-=-=-= -->
		<!-- =-=-=-=-=-=-= Blog & News =-=-=-=-=-=-= -->
		<!--section id="blog" class="custom-padding">
			<div class="container">
				<!-- title-section -->
				<!--div class="main-heading text-center">
					<h2>Latest Articles</h2>
					<div class="slices"><span class="slice"></span><span class="slice"></span><span class="slice"></span>
					</div>
					<p>Cras varius purus in tempus porttitor ut dapibus efficitur sagittis cras vitae lacus metus nunc vulputate facilisis nisi
						<br>eu lobortis erat consequat ut. Aliquam et justo ante. Nam a cursus velit</p>
				</div>
				<!-- End title-section -->
				<!-- Row -->
				<!--div class="row">
					<!-- Blog Grid -->
					<!--div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
						<div class="blog-grid">
							<div class="blog-image">
								<img alt="blog-image1" class="img-responsive" src="images/blog/1.jpg">
							</div>
							<div class="blog-content">
								<h5><a href="blog-detail.jsp">How to prevent my website from being scrolled horizontally?</a></h5>
								<ul class="post-meta">
									<li>By Admin</li>
									<li>Php</li>
									<li>27 July 2016</li>
								</ul>
								<p>We can make table scrollable by adding table-responsive class to it, but how can we loop it so that once the loop ends..</p>
							</div>
							<div class="blog-footer">
								<ul class="like-comment">
									<li><a href="#"><i class="icon-heart"></i>23</a>
									</li>
									<li><a href="#"><i class="icon-chat"></i>32</a>
									</li>
								</ul> <a href="#" class="more-btn pull-right"><i class="fa fa-long-arrow-right"></i> MORE</a> 
							</div>
						</div>
					</div>
					<!-- Blog Grid -->
					<!-- Blog Grid -->
					<!--div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
						<div class="blog-grid">
							<div class="blog-image">
								<img alt="blog-image1" class="img-responsive" src="images/blog/2.jpg">
							</div>
							<div class="blog-content">
								<h5><a href="blog-detail.jsp">What's the best way to implement a 2D interval search in C++?</a></h5>
								<ul class="post-meta">
									<li>By Admin</li>
									<li>Php</li>
									<li>27 July 2016</li>
								</ul>
								<p>We can make table scrollable by adding table-responsive class to it, but how can we loop it so that once the loop ends..</p>
							</div>
							<div class="blog-footer">
								<ul class="like-comment">
									<li><a href="#"><i class="icon-heart"></i>23</a>
									</li>
									<li><a href="#"><i class="icon-chat"></i>32</a>
									</li>
								</ul> <a href="#" class="more-btn pull-right"><i class="fa fa-long-arrow-right"></i> MORE</a> 
							</div>
						</div>
					</div>
					<!-- Blog Grid -->
					<!-- Blog Grid -->
					<!--div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
						<div class="blog-grid">
							<div class="blog-image">
								<img alt="blog-image1" class="img-responsive" src="images/blog/3.jpg">
							</div>
							<div class="blog-content">
								<h5><a href="blog-detail.jsp"> Access a list within an element of a Pandas DataFrame </a></h5>
								<ul class="post-meta">
									<li>By Admin</li>
									<li>Php</li>
									<li>27 July 2016</li>
								</ul>
								<p>We can make table scrollable by adding table-responsive class to it, but how can we loop it so that once the loop ends..</p>
							</div>
							<div class="blog-footer">
								<ul class="like-comment">
									<li><a href="#"><i class="icon-heart"></i>23</a>
									</li>
									<li><a href="#"><i class="icon-chat"></i>32</a>
									</li>
								</ul> <a href="#" class="more-btn pull-right"><i class="fa fa-long-arrow-right"></i> MORE</a> 
							</div>
						</div>
					</div>
					<!-- Blog Grid -->
					<!--div class="clearfix"></div>
					<div class="text-center clearfix section-padding-40"> <a href="javascript:void(0)" class="btn btn-lg btn-primary">View all Blog Post</a> 
					</div>
					<div class="clearfix"></div>
				</div>
				<!-- Row End -->
			<!--/div>
			<!-- end container -->
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
		<!-- =-=-=-=-=-=-= Testimonials  =-=-=-=-=-=-= -->
		<!-- =-=-=-=-=-=-= Our Clients =-=-=-=-=-=-= -->
		<!--section class="custom-padding" id="clients">
			<div class="container">
				<!-- Row -->
				<!--div class="row">
					<!-- col-md-2 client-block -->
					<!--div class="col-md-2 col-sm-4 col-xs-6 client-block">
						<!-- client-item client-item-style-2 -->
						<!--div class="client-item client-item-style-2">
							<a title="Client Logo" href="#">
								<img alt="Clients Logo" src="images/clients/client_5.png">
							</a>
						</div>
						<!-- /client-item client-item-style-2 -->
					<!--/div>
					<!-- /col-md-2 client-block -->
					<!-- col-md-2 client-block -->
					<!--div class="col-md-2 col-xs-6 col-sm-4 client-block">
						<!-- client-item client-item-style-2 -->
						<!--div class="client-item client-item-style-2">
							<a title="Client Logo" href="#">
								<img alt="Clients Logo" src="images/clients/client_6.png">
							</a>
						</div>
						<!-- /client-item client-item-style-2 -->
					<!--/div>
					<!-- /col-md-2 client-block -->
					<!-- col-md-2 client-block -->
					<!--div class="col-md-2  col-xs-6 col-sm-4 client-block">
						<!-- client-item client-item-style-2 -->
						<!--div class="client-item client-item-style-2">
							<a title="Client Logo" href="#">
								<img alt="Clients Logo" src="images/clients/client_7.png">
							</a>
						</div>
						<!-- /client-item client-item-style-2 -->
					<!--/div>
					<!-- /col-md-2 client-block -->
					<!-- col-md-2 client-block -->
					<!--div class="col-md-2 col-xs-6 col-sm-4 client-block">
						<!-- client-item client-item-style-2 -->
						<!--div class="client-item client-item-style-2">
							<a title="Client Logo" href="#">
								<img alt="Clients Logo" src="images/clients/client_8.png">
							</a>
						</div>
						<!-- /client-item client-item-style-2 -->
					<!--/div>
					<!-- /col-md-2 client-block -->
					<!-- col-md-2 client-block -->
					<!--div class="col-md-2 col-xs-6 col-sm-4 client-block">
						<!-- client-item client-item-style-2 -->
						<!--div class="client-item client-item-style-2">
							<a title="Client Logo" href="#">
								<img alt="Clients Logo" src="images/clients/client_9.png">
							</a>
						</div>
						<!-- /client-item client-item-style-2 -->
					<!--/div>
					<!-- /col-md-2 client-block -->
					<!-- col-md-2 client-block -->
					<!--div class="col-md-2 col-xs-6 col-sm-4 client-block">
						<!-- client-item client-item-style-2 -->
						<!--div class="client-item client-item-style-2">
							<a title="Client Logo" href="#">
								<img alt="Clients Logo" src="images/clients/client_10.png">
							</a>
						</div>
						<!-- /client-item client-item-style-2 -->
					</div>
					<!-- /col-md-2 client-block -->
				<!--/div>
				<!-- Row End -->
			<!--/div>
			<!-- end container -->
		<!--/section>
		<!-- =-=-=-=-=-=-= Our Clients -end =-=-=-=-=-=-= -->
        
		<!-- =-=-=-=-=-=-= Download Apps =-=-=-=-=-=-= -->
		<!--div class="parallex section-padding  our-apps text-center">
			<div class="container">
				<!-- title-section -->
				<!--div class="main-heading text-center">
					<h2>Download Our Apps</h2>
					<hr class="main">
				</div>
				<!-- End title-section -->
				<!--div class="row">
					<div class="app-content">
						<!-- Single download start \-->
						<!--div class="col-md-4 col-sm-4">
							<a href="#" class="app-grid"> <span class="app-icon"> <img alt="#" src="images/mobile.png"> </span>
								<div class="app-title">
									<h5>Available on the</h5>
									<h3>iOS App Store</h3>
								</div>
							</a>
						</div>
						<!--/ Single download end-->
						<!-- Single download start \-->
						<!--div class="col-md-4 col-sm-4">
							<a href="#" class="app-grid"> <span class="app-icon"> <img alt="#" src="images/play-store.png"> </span>
								<div class="app-title">
									<h5>Available on the</h5>
									<h3>Google Store</h3>
								</div>
							</a>
						</div>
						<!--/ Single download end-->
						<!-- Single download start \-->
						<!--div class="col-md-4  col-sm-4">
							<a href="#" class="app-grid"> <span class="app-icon"> <img alt="#" src="images/windows.png"> </span>
								<div class="app-title">
									<h5>Available on the</h5>
									<h3>Windows Store</h3>
								</div>
							</a>
						</div>
						<!--/ Single download end-->
					<!--/div>
				</div>
				<!-- End row -->
			<!--/div>
			<!-- end container -->
		<!--/div>
		<!-- =-=-=-=-=-=-= Download Apps END =-=-=-=-=-=-= -->
        
	<!--/div>
	<!-- =-=-=-=-=-=-= Main Area End =-=-=-=-=-=-= -->
	<!--section id="social-media">
		<div class="block no-padding">
			<div class="row">
				<div class="col-md-12">
					<div class="social-bar">
						<ul>
							<li class="social1">
								<a title="" href="#">
									<img alt="" src="images/facebook.png"> <span>Join Us On<strong>FACEBOOK</strong></span> 
								</a>
							</li>
							<li class="social2">
								<a title="" href="#">
									<img alt="" src="images/twitter.png"> <span>Join Us On<strong>TWIITER</strong></span> 
								</a>
							</li>
							<li class="social3">
								<a title="" href="#">
									<img alt="" src="images/google-plus.png"> <span>Join Us On<strong>GOOGLE PLUS</strong></span> 
								</a>
							</li>
							<li class="social4">
								<a title="" href="#">
									<img alt="" src="images/linkedin.png"> <span>Join Us On<strong>LINKED IN</strong></span> 
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =-=-=-=-=-=-= FOOTER =-=-=-=-=-=-= -->
	<!--footer class="footer-area">
		<!--Footer Upper-->
		<!--div class="footer-content">
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-8 col-md-offset-2">
						<div class="footer-content text-center no-padding margin-bottom-40">
							<div class="logo-footer">
								<img id="logo-footer" class="center-block" src="images/logo-1.png" alt="">
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus illo vel dolorum soluta consectetur doloribus sit. Delectus non tenetur odit dicta vitae debitis suscipit doloribus. Lorem ipsum dolor sit amet, illo vel.</p>
						</div>
					</div>
					<!--Two 4th column-->
					<!--div class="col-md-6 col-sm-12 col-xs-12">
						<div class="row clearfix">
							<div class="col-lg-7 col-sm-6 col-xs-12 column">
								<div class="footer-widget about-widget">
									<h2>Our Addres</h2>
									<ul class="contact-info">
										<li><span class="icon fa fa-map-marker"></span> 60 Link Road Lhr. Pakistan 54770</li>
										<li><span class="icon fa fa-phone"></span> (042) 1234567890</li>
										<li><span class="icon fa fa-map-marker"></span> contant@scriptsbundle.com</li>
										<li><span class="icon fa fa-fax"></span> (042) 1234 7777</li>
									</ul>
									<div class="social-links-two clearfix">
										<a href="#" class="facebook img-circle">	<span class="fa fa-facebook-f"></span>
										</a>
										<a href="#" class="twitter img-circle">	<span class="fa fa-twitter"></span>
										</a>
										<a href="#" class="google-plus img-circle">	<span class="fa fa-google-plus"></span>
										</a>
										<a href="#" class="linkedin img-circle"> <span class="fa fa-pinterest-p"></span>
										</a>
										<a href="#" class="linkedin img-circle">	<span class="fa fa-linkedin"></span>
										</a>
									</div>
								</div>
							</div>
							<!--Footer Column-->
							<!--div class="col-lg-5 col-sm-6 col-xs-12 column">
								<h2>Our Service</h2>
								<div class="footer-widget links-widget">
									<ul>
										<li><a href="#">Web Development</a>
										</li>
										<li><a href="#">Web Designing</a>
										</li>
										<li><a href="#">Android Development</a>
										</li>
										<li><a href="#">Theme Development</a>
										</li>
										<li><a href="#">IOS Development</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--Two 4th column End-->
					<!--Two 4th column-->
					<!--div class="col-md-6 col-sm-12 col-xs-12">
						<div class="row clearfix">
							<!--Footer Column-->
							<!--div class="col-lg-7 col-sm-6 col-xs-12 column">
								<div class="footer-widget news-widget">
									<h2>Latest News</h2>
									<!--News Post-->
									<!--div class="news-post">
										<div class="icon"></div>
										<div class="news-content">
											<figure class="image-thumb">
												<img src="images/blog/popular-2.jpg" alt="">
											</figure> <a href="#">If you need a crown or lorem an implant you will pay it gap it</a>
										</div>
										<div class="time">July 2, 2014</div>
									</div>
									<!--News Post-->
									<!--div class="news-post">
										<div class="icon"></div>
										<div class="news-content">
											<figure class="image-thumb">
												<img src="images/blog/poFpular-1.jpg" alt="">
											</figure> <a href="#">If you need a crown or lorem an implant you will pay it gap it</a>
										</div>
										<div class="time">July 2, 2014</div>
									</div>
								</div>
							</div>
							<!--Footer Column-->
							<!--div class="col-lg-5 col-sm-6 col-xs-12 column">
								<div class="footer-widget links-widget">
									<h2>Site Links</h2>
									<ul>
										<li><a href="login.jsp">Login</a>
										</li>
										<li><a href="register.jsp">Register</a>
										</li>
										<li><a href="listing.jsp">Listing</a>
										</li>
										<li><a href="blog.jsp">Blog</a>
										</li>
										<li><a href="contact.jsp">Contact Us</a>
										</li>

									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--Two 4th column End-->
				<!--</div>
			</div>
		</div>//-->
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