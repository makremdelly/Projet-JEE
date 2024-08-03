<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="dao.*"%>
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
<title>Liste des cours | UDEMA</title>

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

	<div id="page">


		<%@ include file="header.jsp"%>




		<section id="hero_in" class="courses">
			<div class="wrapper">
				<div class="container">
					<h1 class="fadeInUp">
						<span></span>Liste des cours
					</h1>
				</div>
			</div>
		</section>
		<!--/hero_in-->
		<div class="filters_listing sticky_horizontal">
			<div class="container">
				<ul class="clearfix">
					<li>
						<div class="switch-field">
							<input type="radio" id="all" name="listing_filter" value="all"
								checked> <label for="all">Tous les cours</label> <input
								type="radio" id="popular" name="listing_filter" value="popular">
							<label for="popular">Populaire</label> <input type="radio"
								id="latest" name="listing_filter" value="latest"> <label
								for="latest">Dernier</label>
						</div>
					</li>
					<li>
						<div class="layout_view">
							<a href="#0" class="active"><i class="icon-th"></i></a> <a
								href="cours_list.jsp"><i class="icon-th-list"></i></a>
						</div>
					</li>

				</ul>
			</div>
			<!-- /container -->
		</div>
		<!-- /filters -->

		<div class="container margin_60_35">
			<div class="row">


				<%
		CourseDAOImpl courseDAOImpl = new CourseDAOImpl();
		List<Course> coursesList = courseDAOImpl.getAllCourses();
										
										
		for(int i=0; i<coursesList.size();i++){
		%>


				<div class="col-xl-4 col-lg-6 col-md-6">
					<div class="box_grid wow">
						<figure class="block-reveal">
							<div class="block-horizzontal"></div>
							<a href="#0" class="wish_bt"></a>
							<a href="course?id=<%= coursesList.get(i).getIdCourse() %>"><img src="<%= coursesList.get(i).getPhoto() %>"
								class="img-fluid" alt=""></a>
							<div class="price"><%= coursesList.get(i).getPrice() %> DT</div>
							<div class="preview">
								<span>Voir cours</span>
							</div>
						</figure>
						<div class="wrapper">
							<small>Populaire</small>
							<h3><%= coursesList.get(i).getTitle() %></h3>
							<p><%= coursesList.get(i).getDescription() %></p>
							<div class="rating">
								<i class="icon_star voted"></i><i class="icon_star voted"></i><i
									class="icon_star voted"></i><i class="icon_star"></i><i
									class="icon_star"></i> <small>(145)</small>
							</div>
						</div>
						<ul>
							<li><i class="icon_clock_alt"></i> <%= coursesList.get(i).getDuration() %>hours</li>
							<li><i class="icon_like"></i> 890</li>
							<li><a href="cours_info.html">Inscrivez-vous</a></li>
						</ul>
					</div>
				</div>

<%} %>

				<!-- /box_grid -->

			</div>
		</div>
		<!-- /row -->
		<p class="text-center">
			<a href="#0" class="btn_1 rounded add_top_30">charger plus</a>
		</p>
	</div>


	<!-- /bg_color_1 -->

	<!--/main-->


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