<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="models.Course"%>
<!DOCTYPE html>
<html lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Udema a modern educational site template">
<meta name="author" content="Ansonika">
<title>Cours | UDEMA</title>

<!-- Favicons-->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" type="image/x-icon"
	href="img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
	href="img/apple-touch-icon-144x144-precomposed.png">

<!-- BASE CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/vendors.css" rel="stylesheet">
<link href="css/icon_fonts/css/all_icons.min.css" rel="stylesheet">

<!-- YOUR CUSTOM CSS -->
<link href="css/custom.css" rel="stylesheet">

</head>

<body>




	<%@ include file="header.jsp"%>
	
	<% Course course = (Course) request.getAttribute("course");
		if(course==null){
			response.sendRedirect("cours_grille.jsp");
		} else{
	%>


	<section id="hero_in" class="courses">
		<div class="wrapper">
			<div class="container">
				<h1 class="fadeInUp">
					<span></span><%=course.getTitle() %>
				</h1>
			</div>
		</div>
	</section>
	<!--/hero_in-->

	<div class="bg_color_1">
		<nav class="secondary_nav sticky_horizontal">
			<div class="container">
				<ul class="clearfix">
					<li><a href="#description" class="active">Description</a></li>
					<li><a href="#teachers">Enseignant</a></li>
					<li><a href="#reviews">Avis</a></li>
				</ul>
			</div>
		</nav>
		<div class="container margin_60_35">
			<div class="row">
				<div class="col-lg-8">
					<section id="description">
						<div class="box_highlight">
							<ul class="additional_info">
								<li><i class="pe-7s-timer"></i>Durée du cours<strong>25
										jours</strong></li>
								<li><i class="pe-7s-date"></i>Début du cours<strong>10
										Sept. 2019</strong></li>
								<li><i class="pe-7s-wallet"></i>Frais de cours<strong>250.000
										DT</strong></li>
							</ul>
						</div>
						<!-- /box_highlight -->
						<h2>Description</h2>
						<p>
							Per consequat adolescens ex, cu nibh commune temporibus vim, ad
							sumo viris <strong>eloquentiam sed</strong>. Mea appareat
							omittantur eloquentiam ad, nam ei quas oportere democritum. Prima
							causae admodum id est, ei timeam inimicus sed. Sit an meis
							aliquam, cetero inermis vel ut. An sit illum euismod facilisis,
							tamquam <strong>vulputate</strong> pertinacia eum at.
						</p>
						<p>Mea appareat omittantur eloquentiam ad, nam ei quas
							oportere democritum. Prima causae admodum id est, ei timeam
							inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit
							illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>

						<!-- /row -->
					</section>
					<!-- /section -->

					<section id="teachers">
						<div class="intro_title">
							<h2>Enseignant</h2>
						</div>
						<div class="row add_top_20 add_bottom_30">
							<div class="col-lg-6">
								<ul class="list_teachers">
									<li><a href="teacher-detail.html">
											<figure>
												<img
													src="http://via.placeholder.com/150x150/ccc/fff/teacher_1_thumb.jpg"
													alt="">
											</figure>
											<h5>Tomas Hegel</h5>
											<p>Mathematics</p>
											<i class="pe-7s-angle-right-circle"></i>
									</a></li>
								</ul>
							</div>

						</div>
						<!-- /row -->
					</section>
					<!-- /section -->



					<section id="Avis">
						<h2>Avis</h2>
						<div class="reviews-container">
							<div class="row">
								<div class="col-lg-3">
									<div id="review_summary">
										<strong>4.7</strong>
										<div class="rating">
											<i class="icon_star voted"></i><i class="icon_star voted"></i><i
												class="icon_star voted"></i><i class="icon_star voted"></i><i
												class="icon_star"></i>
										</div>
										<small>Basé sur 4 avis</small>
									</div>
								</div>
								<div class="col-lg-9">
									<div class="row">
										<div class="col-lg-10 col-9">
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													style="width: 90%" aria-valuenow="90" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="col-lg-2 col-3">
											<small><strong>5 étoiles</strong></small>
										</div>
									</div>
									<!-- /row -->
									<div class="row">
										<div class="col-lg-10 col-9">
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													style="width: 95%" aria-valuenow="95" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="col-lg-2 col-3">
											<small><strong>4 étoiles</strong></small>
										</div>
									</div>
									<!-- /row -->
									<div class="row">
										<div class="col-lg-10 col-9">
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													style="width: 60%" aria-valuenow="60" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="col-lg-2 col-3">
											<small><strong>3 étoiles</strong></small>
										</div>
									</div>
									<!-- /row -->
									<div class="row">
										<div class="col-lg-10 col-9">
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													style="width: 20%" aria-valuenow="20" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="col-lg-2 col-3">
											<small><strong>2 étoiles</strong></small>
										</div>
									</div>
									<!-- /row -->
									<div class="row">
										<div class="col-lg-10 col-9">
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													style="width: 0" aria-valuenow="0" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="col-lg-2 col-3">
											<small><strong>1 étoiles</strong></small>
										</div>
									</div>
									<!-- /row -->
								</div>
							</div>
							<!-- /row -->
						</div>

						<hr>

						<div class="reviews-container">

							<div class="review-box clearfix">
								<figure class="rev-thumb">
									<img
										src="http://via.placeholder.com/150x150/ccc/fff/avatar1.jpg"
										alt="">
								</figure>
								<div class="rev-content">
									<div class="rating">
										<i class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star"></i>
									</div>
									<div class="rev-info">Admin – April 03, 2016:</div>
									<div class="rev-text">
										<p>Sed eget turpis a pede tempor malesuada. Vivamus quis
											mi at leo pulvinar hendrerit. Cum sociis natoque penatibus et
											magnis dis</p>
									</div>
								</div>
							</div>
							<!-- /review-box -->
							<div class="review-box clearfix">
								<figure class="rev-thumb">
									<img
										src="http://via.placeholder.com/150x150/ccc/fff/avatar2.jpg"
										alt="">
								</figure>
								<div class="rev-content">
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon_star voted"></i><i
											class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star"></i>
									</div>
									<div class="rev-info">Ahsan – April 01, 2016:</div>
									<div class="rev-text">
										<p>Sed eget turpis a pede tempor malesuada. Vivamus quis
											mi at leo pulvinar hendrerit. Cum sociis natoque penatibus et
											magnis dis</p>
									</div>
								</div>
							</div>
							<!-- /review-box -->
							<div class="review-box clearfix">
								<figure class="rev-thumb">
									<img
										src="http://via.placeholder.com/150x150/ccc/fff/avatar3.jpg"
										alt="">
								</figure>
								<div class="rev-content">
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon_star voted"></i><i
											class="icon_star voted"></i><i class="icon_star voted"></i><i
											class="icon_star"></i>
									</div>
									<div class="rev-info">Sara – March 31, 2016:</div>
									<div class="rev-text">
										<p>Sed eget turpis a pede tempor malesuada. Vivamus quis
											mi at leo pulvinar hendrerit. Cum sociis natoque penatibus et
											magnis dis</p>
									</div>
								</div>
							</div>
							<!-- /review-box -->
						</div>
						<!-- /review-container -->
					</section>
				</div>
				<!-- /col -->

				<aside class="col-lg-4" id="sidebar">
					<div class="box_detail">
						<h4>Renseignez-vous maintenant</h4>
						<p class="nopadding">Pour plus d'information</p>
						<div id="message-contact"></div>
						<form method="post" action="assets/contact.php" id="contactform"
							autocomplete="off">
							<span class="input"> <input class="input_field"
								type="text" id="name_contact" name="name_contact"> <label
								class="input_label"> <span class="input__label-content">Nom
										Complet</span>
							</label>
							</span> <span class="input"> <input class="input_field"
								type="email" id="email_contact" name="email_contact"> <label
								class="input_label"> <span class="input__label-content">E-mail</span>
							</label>
							</span> <span class="input"> <input class="input_field"
								type="text" id="phone_contact" name="phone_contact"> <label
								class="input_label"> <span class="input__label-content">Numéro
										du téléphone</span>
							</label>
							</span> <span class="input"> <textarea class="input_field"
									id="message_contact" name="message_contact"
									style="height: 120px;"></textarea> <label class="input_label">
									<span class="input__label-content">Votre message</span>
							</label>
							</span>
							<hr>
							<div style="position: relative;">
								<input type="submit" value="Renseignez-vous maintenant"
									class="btn_1 full-width" id="submit-contact">
							</div>
						</form>
					</div>
				</aside>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /bg_color_1 -->

	<!--/main-->

<%} %>


	<%@ include file="footer.jsp"%>
	<!--/footer-->

	<!-- page -->

	<!-- COMMON SCRIPTS -->
	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/common_scripts.js"></script>
	<script src="js/main.js"></script>
	<script src="assets/validate.js"></script>

</body>
</html>