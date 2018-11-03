﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html class="no-js" lang="zxx"> 
    
<!-- Mirrored from mushahid.me/tf/businece/businece/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 29 Oct 2018 04:25:46 GMT -->
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
		<meta name="description" content="business is a multipurpose buisness template suitable for agency, business, consultant, corporate, creative, finance, project, startup, trading  or any other business website">
		<meta name="keywords" content="business, Bootstrap, Construction, finance, Real Estate, Corporate, Template ">
		<meta name="author" content="Mushahid Islam">		
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Site Title -->
        <title>ISB BUSINESS</title>
		<!-- Favicon -->
        <link rel="shortcut icon" href="assets/img/favicon.png" >
		<!-- All CSS Here -->
		<!-- Bootstrap 4.2.0 CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- This file contents all plugings CSS -->		
		<link rel="stylesheet" href="assets/css/theme-plugins.css">
		<!-- Style CSS -->
		<link rel="stylesheet" href="style.css">
		<!-- Responsive CSS -->
        <link rel="stylesheet" href="assets/css/responsive.css">
    </head>
    <body>
        <form runat="server">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <!-- Start Preloader -->
		<div class="preloader-wrap">
			<div class="cube-wrapper">
				<div class="cube-folding">
					<span class="leaf1"></span>
					<span class="leaf2"></span>
					<span class="leaf3"></span>
					<span class="leaf4"></span>
				</div>
				<span class="loading" data-name="Loading">Loading</span>
			</div>
		</div>
		<!-- End Preloader -->
		<!-- Start Wrapper -->
		<div class="wrapper">
			<!-- Start Header Area -->
			<header class="header-area dark-header">
				<!-- Start header top area -->
				<div class="header-top-area">
					<div class="container">
						<div class="row">
							<div class="col-md-9">
								<div class="header-top-contact">
									<a href="#"><i class="icofont-clock-time"></i>Tuesday - Monday (10:00am - 07:00pm)</a>
									<a href="tel:"><i class="icofont-phone"></i>+00 0123 456 789</a>
									<a href="mailto:"><i class="icofont-envelope"></i>yourname@gmail.com</a>
								</div>
							</div>
							<div class="col-md-3">
								<div class="quote-top">
								 	<a href="#" class="theme-btn btn-style-order-nav" data-toggle="modal" data-target="#donate-popup">login</a>
								</div>
								<!-- Start modal -->
								<div class="modal fade pop-box" id="donate-popup" tabindex="-1" role="dialog" aria-labelledby="donate-popup" aria-hidden="true">
								    <div class="modal-dialog" style="width:500px">
								        <div class="modal-content">
								            <!--Donation div-->
								            <div class="donation-div">
								                <div class="donation-plz">
								                    <form method="post" action="http://mushahid.me/tf/businece/businece/contact.html">
								                        <!--Form Portlet-->
								                        <!--Form Portlet-->
								                        <div class="form-portlet">
								                            <h4>Sign In Account</h4>
								                            <div class="row">
								                                <div class="form-group col-lg-12 col-md-12">
								                                    <div class="field-label">UserName <span class="required">*</span></div>
								                                    
                                                                    <asp:TextBox ID="txtuser" runat="server" placeholder="User Name" required></asp:TextBox>
                                                                  
								                                </div>
								                                <div class="form-group col-lg-12 col-md-12">
								                                    <div class="field-label">Password <span class="required">*</span></div>
								                                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" placeholder="Password" required></asp:TextBox>
								                                </div>
								                                
								                            </div>
								                        </div>
								                        <br>
								                        <!--Form Portlet-->
								                        <div class="text-left">
								                            
                                                            <asp:Button ID="btnlogin" OnClick="btnlogin_Click" class="btn btn-success" runat="server" Text="Sign In" ValidationGroup="g" />
								                        </div>
								                    </form>
								                </div>
								            </div>
								        </div>
								        <!-- /.modal-content -->
								    </div>
								    <!-- /.modal-dialog -->
								</div>
								<!-- End modal -->
							</div>
						</div>
					</div>
				</div>
				<!-- End header top area -->
				<!-- Start main menu area -->
				<div class="navigation-area">
					<div class="container">
						<div class="row">
							<div class=" col-6 col-md-3">
								<!-- Start site branding -->
								<div class="site-branding">
									<a href="index.html"><img src="assets/img/logo.png" alt="Logo"></a>
								</div>
								<!-- End site branding -->
							</div>
							<div class="col-2 col-md-7 order-two">
								<!-- Start business Nav -->
								<div class="main-menu-wrap">
									<nav class="business-nav">
										<ul class="menu">
											<li ><a href="Default.aspx">Home</a></li>
											<li><a href="#">About</a>
											    											
											</li>
											<li><a href="Oppertunity.aspx">Opportunity</a>
											    											
											</li>
											<li> <a href="#">Legal</a>
												
											</li>
											<li class="has-dropdown"><a href="#">Gallery</a>
												<!-- Start Mega Menu -->
												<ul><!-- Dropdown Items -->
													<li><a href="#">Gallery</a></li>
													<li><a href="#">Video</a></li>
													
												</ul>
												<!-- End Mega Menu -->
											</li>
											
											<li > <a href="#">Contact</a></li>
										    <li> <a href="Login.aspx">Login</a></li>
                                        </ul>
									</nav> 
								</div>
								<!-- End business Nav -->
								<!-- Mobile Menu Active here. Don't Remove it -->
								<div class="mobile-menu-area"></div>
							</div>
							<div class="col-4 col-md-2 order-one">
								<!-- Start Header Search -->
								<div class="header-search">
									<form role="search" method="get" class="search-form" action="http://mushahid.me/digitalizer/">
										<label>
											<input type="search" class="search-field" placeholder="Search …" value="" name="s">
										</label>
										<input type="submit" class="search-submit" value="Search">
									</form>
								</div>
								<!-- End Header Search -->
							</div>
						</div>
					</div>
				</div>
			</header>
			<!-- End Header Area -->
			<!-- Start Slider Area -->
			<div class="slider-area">
				<div id="welcome-slide" class="slide-controls owl-carousel">
					<!-- Start Single Slide -->
					<div class="single-slide overlay-bg-2" style="background-image: url(assets/img/slider/slide-1.jpg);">
						<!-- Start Slide Content -->
						<div class="slide-content">
							<div class="container">
								<div class="row">
									<div class="col-md-12">
										<!-- Start Slide content wrap -->
										<div class="slide-content-area text-center">
											<!-- Start Single slide content	-->
											<div class="single-slide-content">
												<h4>we are the best</h4>
												<h1>For your business</h1>
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo <br> ligula eget dolor.</p>
												<a href="#" class="btn btn-business color-1 btn-round">Contact Us</a>
												<a href="#" class="btn btn-business color-2 btn-round">Learn More</a>
											</div>
											<!-- End Single slide content	-->
										</div>
										<!-- End Slide content wrap-->
									</div>
								</div>
							</div>
						</div>
						<!-- End Slide Content -->
					</div>
					<!-- End Single Slide -->				
					<!-- Start Single Slide -->
					<div class="single-slide overlay-bg-2" style="background-image: url(assets/img/slider/slide-2.jpg);">
						<!-- Start Slide Content -->
						<div class="slide-content ">
							<div class="container">
								<div class="row">
									<div class="col-md-12">
										<!-- Start Slide content wrap -->
										<div class="slide-content-area float-right">
											<!-- Start Single slide content	-->
											<div class="single-slide-content">
												<h4>we are the best</h4>
												<h1>For your business</h1>
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo <br> ligula eget dolor.</p>
												<a href="#" class="btn btn-business color-1 btn-round">Contact Us</a>
												<a href="#" class="btn btn-business color-2 btn-round">Learn More</a>
											</div>
											<!-- End Single slide content	-->
										</div>
										<!-- End Slide content wrap-->
									</div>
								</div>
							</div>
						</div>
						<!-- End Slide Content -->
					</div>
					<!-- End Single Slide -->				
					<!-- Start Single Slide -->
					<div class="single-slide overlay-bg-2" style="background-image: url(assets/img/slider/slide-3.jpg);">
						<!-- Start Slide Content -->
						<div class="slide-content">
							<div class="container">
								<div class="row">
									<div class="col-md-12">
										<!-- Start Slide content wrap -->
										<div class="slide-content-area">
											<!-- Start Single slide content	-->
											<div class="single-slide-content">
												<h4>we are the best</h4>
												<h1>For your business</h1>
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo <br> ligula eget dolor.</p>
												<a href="#" class="btn btn-business color-1 btn-round">Contact Us</a>
												<a href="#" class="btn btn-business color-2 btn-round">Learn More</a>
											</div>
											<!-- End Single slide content	-->
										</div>
										<!-- End Slide content wrap-->
									</div>
								</div>
							</div>
						</div>
						<!-- End Slide Content -->
					</div>
					<!-- End Single Slide -->				
				</div>
			</div>
			<!-- End Slider Area -->
			<!-- Start About Area -->
			<div class="about-us-area pt110-pb80">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<!-- Start section title -->
							<div class="section-title mb-50">
								<h5>Few thing about ISB BUSINESS</h5>
								<h2>About Our Company</h2>
							</div>
							<!-- End section title -->
							<div class="about-left-content">
								<p>
									Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. 
									Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.
								</p>
								<a href="#" class="btn btn-business color-1 btn-round">Contact Us</a>
							</div>
						</div>
						<div class="col-md-6">
							<!-- Start Accordian -->
							<div class="digital-accordian">
								<!--Accordion wrapper-->
								<div class="accordion" id="accordionEx" role="tablist" aria-multiselectable="true">
								    <!-- Accordion card -->
								    <div class="card active">
								        <!-- Card header -->
								        <div class="card-header active" role="tab" id="headingOne">
								            <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
								                <h5 class="mb-0">
								                   <span class="icon-left"><i class="icofont-anchor"></i></span>Design 
								                  <span class="ico-rote"> <i class="icofont-caret-up rotate-icon"></i></span>
								                </h5>
								            </a>
								        </div>
								        <!-- Card body -->
								        <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordionEx">
								            <div class="card-body">
								            	<img src="assets/img/about/1.jpg" alt="">
								                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </p>
								            </div>
								        </div>
								    </div>
								    <!-- Accordion card -->
								    <!-- Accordion card -->
								    <div class="card">
								        <!-- Card header -->
								        <div class="card-header" role="tab" id="headingTwo">
								            <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
								                <h5 class="mb-0">
								                   <span class="icon-left"><i class="icofont-monitor"></i></span> Development 
								                   <span class="ico-rote"> <i class="icofont-caret-up rotate-icon"></i></span>
								                </h5>
								            </a>
								        </div>
								        <!-- Card body -->
								        <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordionEx">
								            <div class="card-body">
								            	<img src="assets/img/about/1.jpg" alt="">
								                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </p>
								            </div>
								        </div>
								    </div>
								    <!-- Accordion card -->
								    <!-- Accordion card -->
								    <div class="card">
								        <!-- Card header -->
								        <div class="card-header" role="tab" id="headingThree">
								            <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
								                <h5 class="mb-0">
								                   <span class="icon-left"><i class="icofont-crown-king"></i></span> Branding
								                   <span class="ico-rote"> <i class="icofont-caret-up rotate-icon"></i></span>
								                </h5>
								            </a>
								        </div>
								        <!-- Card body -->
								        <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordionEx">
								            <div class="card-body">
								            	<img src="assets/img/about/1.jpg" alt="">
								                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </p>
								            </div>
								        </div>
								    </div>
								    <!-- Accordion card -->
								    <!-- Accordion card -->
								    <div class="card">
								        <!-- Card header -->
								        <div class="card-header" role="tab" id="headingFour">
								            <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
								                <h5 class="mb-0">
								                   <span class="icon-left"><i class="icofont-chart-bar-graph"></i></span> Marketing 
								                   <span class="ico-rote"> <i class="icofont-caret-up rotate-icon"></i></span>
								                </h5>
								            </a>
								        </div>
								        <!-- Card body -->
								        <div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="headingFour" data-parent="#accordionEx">
								            <div class="card-body">
								            	<img src="assets/img/about/1.jpg" alt="">
								                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </p>
								            </div>
								        </div>
								    </div>
								    <!-- Accordion card -->
								</div>
								<!--/.Accordion wrapper-->
							</div>
							<!-- End Accordian -->
						</div>
					</div>
				</div>
			</div>
			
			<footer class="footer-area pt-110">
				<div class="container">
					<div class="row pb-70">
						<div class="col-md-6 col-lg-3">
							<div class="widget widget-site-brand">
								<a href="index.html"><img src="assets/img/logo .png" alt="Business"></a>
							</div>
							<!-- Start about widget -->
							<div class="widget widget-about">
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. </p>
							</div>
							<!-- End about widget -->
							<!-- Start contact widget -->
							<div class="widget widget-contact">
								<a href="#"><i class="icofont-google-map"></i>Lane #22, House #12/E.</a>
								<a href="tel:"><i class="icofont-phone"></i>+880 1234 567 890</a>
								<a href="mailto:"><i class="icofont-envelope"></i>yourname@gmail.com</a>
							</div>
							<!-- End contact widget -->
						</div>
						<div class="col-md-6 col-lg-3">
							<!-- Start links widget -->
							<div class="widget widget-links">
								<h4 class="widget-title">Useful Links</h4>
								<ul>
									<li class="border-widget"><a href="about.html"><i class="icofont-double-right"></i>About us</a></li>
									<li class="border-widget"><a href="service-1.html"><i class="icofont-double-right"></i>Our Services</a></li>
									<li class="border-widget"><a href="project-2.html"><i class="icofont-double-right"></i>Recent Projects</a></li>
									<li class="border-widget"><a href="blog-list.html"><i class="icofont-double-right"></i>Latest Posts</a></li>
									<li class="border-widget"><a href="contact.html"><i class="icofont-double-right"></i>Contact with us</a></li>
								</ul>
							</div>
							<!-- End links widget -->
						</div>
						<div class="col-md-6 col-lg-3">
							<!-- Start post widget -->
							<h4 class="widget-title">Useful Links</h4>
							<div class="widget-post post-border">
								<a href="#"><img src="assets/img/post/4.jpg" alt=""></a>
								<div class="post-content"> 
									<a class="title" href="#">How to star a startup business</a>
									<p>12 Jan</p>
								</div>
							</div>
							<div class="widget-post post-border">
								<a href="#"><img src="assets/img/post/5.jpg" alt=""></a>
								<div class="post-content"> 
									<a class="title" href="#">How to star a startup business</a>
									<p>12 Jan</p>
								</div>
							</div>
							<div class="widget-post">
								<a href="#"><img src="assets/img/post/6.jpg" alt=""></a>
								<div class="post-content"> 
									<a class="title" href="#">How to star a startup business</a>
									<p>12 Jan</p>
								</div>
							</div>
							<!-- End post widget -->
						</div>
						<div class="col-md-6 col-lg-3">
							<!-- Start News Letter Widget -->
							<div class="widget news-letter-widget">
								<h4 class="widget-title">Newsletter</h4>
								<!-- Start Instagram Photos -->
								<div class="subscribe-footer">
									<p>Get 15% of your next order. Be the first to learn about promotions special events, new arrivals and more.</p>
									<form action="#" method="post" class="subscribe-form">
										<input name="email" class="widget-input" placeholder="Enter Your Email" type="email">
										<button type="submit" class="widget-sbtn"><i class="icofont-paper-plane"></i></button>
									</form>
									<!-- Start Links -->
									<ul class="social-links-footer">
										<li><a href="#"><i class="icofont-facebook"></i></a></li>
										<li><a href="#"><i class="icofont-twitter"></i></a></li>
										<li><a href="#"><i class="icofont-linkedin"></i></a></li>
										<li><a href="#"><i class="icofont-google-plus"></i></a></li>
									</ul>
									<!-- End Links -->
								</div>
								<!-- End Instagram Photos -->
							</div>
							<!-- End News Letter Widget -->
						</div>
					</div>
					<!-- Start Copy right -->
					<div class="row">
						<div class="col text-center">
							<div class="copy-right">
								<p>© 2018 ISB BUSINESS. All Right Recived | Powered By: <a href="http:www.officialsolutions.in">Official Solutions</a></p>
							</div>
						</div>
					</div>
					<!-- End Copy right -->
				</div>
			</footer>
			<!-- End Footer Area -->
		</div>
        <!-- End Wrapper -->
		<!-- all js here -->
		<!-- jquery latest version -->
        <script src="assets/js/vendor/jquery-2.2.1.min.js"></script>
		<!-- bootstrap js -->
        <script src="assets/js/bootstrap.min.js"></script>		
		<!-- plugins js -->
        <script src="assets/js/plugins.js"></script>
		<!-- main js -->
        <script src="assets/js/main.js"></script>
            </form>
    </body>

<!-- Mirrored from mushahid.me/tf/businece/businece/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 29 Oct 2018 04:27:19 GMT -->
</html>