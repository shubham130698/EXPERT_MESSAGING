<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from templates.scriptsbundle.com/knowledge/demo/404.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 07:35:35 GMT -->
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
							<img class="img-circle resize" alt="" src="images/authors/13.jpg">
							<span class="hidden-xs small-padding">
								<span>manish patel</span>
							 <i class="fa fa-caret-down"></i>
							</span>
						</a>
						<ul class="dropdown-menu ">
							<!--li><a href="profile.jsp"><i class=" icon-bargraph"></i> Dashboard</a></li//-->
							<li><a href="profile-setting.jsp"><i class=" icon-gears"></i> Profile Setting</a></li>
							<li><a href="question-list.jsp"><i class="icon-heart"></i> Questions</a></li>
							<li><a href="#"><i class="icon-lock"></i> Logout</a></li>
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
              <li><a href="index.jsp">Home </a>
              </li>
              <!--li><a href="index2.jsp">Home 2</a>
              </li//-->
              <li><a href="question-detail.jsp">Question Detail</a>
              </li>
              <!--li><a href="blog.jsp">Blog</a>
              </li>
              <li><a href="blog-1.jsp">Blog RightSide Bar</a>
              </li>
              <li><a href="blog-2.jsp">Blog LeftSide Bar</a>
              </li>
              <li><a href="blog-detial.jsp">Blog Single</a>
              </li//-->
              <li><a href="404.jsp">Error Page</a>
							</li>
              <li><a href="contact.jsp">Contact Us</a>
              </li>
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

    <!-- =-=-=-=-=-=-= Page Breadcrumb =-=-=-=-=-=-= -->

    <section class="page-title">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-7 co-xs-12 text-left">
            <h1>Page Not Found</h1>
          </div>
          <!-- end col -->
          <div class="col-md-6 col-sm-5 co-xs-12 text-right">
            <div class="bread">
              <ol class="breadcrumb">
                <li><a href="#">Home</a>
                </li>
                <li><a href="#">Pages</a>
                </li>
                <li class="active">404</li>
              </ol>
            </div>
            <!-- end bread -->
          </div>
          <!-- end col -->
        </div>
        <!-- end row -->
      </div>
      <!-- end container -->
    </section>

    <!-- =-=-=-=-=-=-= Page Breadcrumb End =-=-=-=-=-=-= -->

    <!-- =-=-=-=-=-=-= Error  =-=-=-=-=-=-= -->
    <section class="error-page white section-padding" id="error-page">
      <div class="container">
        <div class="row">

          <div class="col-md-8 col-sm-7 col-xs-12 text-left">
            <div class="error-grid left-align-text">
              <h2 class="uppercase">Oops... Page Not Found!</h2>
              <p>Sorry the Page Could not be Found here. Try using the button below to go to main page of the site</p>

              <div class="error-search">
                <form action="http://templates.scriptsbundle.com/knowledge/demo/index.jsp" method="get">
                  <input type="text" class="error-input">
                  <input type="submit" class="btn  btn-primary" value="Search" name="Search">
                </form>
              </div>
            </div>
          </div>
          <!--end item-->

          <div class="col-md-4 col-sm-5 col-xs-12 bottom-margin">
            <br>
            <h1 class="uppercase error-title-big text-blue">404</h1>
          </div>
          <!--end item-->

        </div>
      </div>
      <!-- end container -->
    </section>
    <!-- =-=-=-=-=-=-= Error  End =-=-=-=-=-=-= -->
  </div>
  <!-- =-=-=-=-=-=-= Main Area End =-=-=-=-=-=-= -->
  <!-- =-=-=-=-=-=-= FOOTER =-=-=-=-=-=-= -->
  <footer class="footer-area">

    <!--Footer Upper-->
    <!--div class="footer-content">
      <div class="container">
        <div class="row clearfix">
          <div class="col-md-8 col-md-offset-2">
            <div class="footer-content text-center no-padding margin-bottom-40">
              <div class="logo-footer"><img id="logo-footer" class="center-block" src="images/logo-1.png" alt="">
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
                    <a href="#" class="facebook img-circle">
                      <span class="fa fa-facebook-f"></span>
                    </a>
                    <a href="#" class="twitter img-circle">
                      <span class="fa fa-twitter"></span>
                    </a>
                    <a href="#" class="google-plus img-circle">
                      <span class="fa fa-google-plus"></span>
                    </a>
                    <a href="#" class="linkedin img-circle">
                      <span class="fa fa-pinterest-p"></span>
                    </a>
                    <a href="#" class="linkedin img-circle">
                      <span class="fa fa-linkedin"></span>
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
                      <figure class="image-thumb"><img src="images/blog/popular-2.jpg" alt="">
                      </figure>
                      <a href="#">If you need a crown or lorem an implant you will pay it gap it</a>
                    </div>
                    <div class="time">July 2, 2014</div>
                  </div>

                  <!--News Post-->
                  <!--div class="news-post">
                    <div class="icon"></div>
                    <div class="news-content">
                      <figure class="image-thumb"><img src="images/blog/popular-1.jpg" alt="">
                      </figure>
                      <a href="#">If you need a crown or lorem an implant you will pay it gap it</a>
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

        <!--/div>
      </div>
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


<!-- Mirrored from templates.scriptsbundle.com/knowledge/demo/404.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 07:35:35 GMT -->
</html>
