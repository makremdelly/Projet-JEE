<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Udema a modern educational site template">
    <meta name="author" content="Ansonika">
    <title>Mon profil | UDEMA</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- BASE CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	<link href="css/vendors.css" rel="stylesheet">
	<link href="css/icon_fonts/css/all_icons.min.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">

</head>

<body>
	
	<div id="page" class="theia-exception">
		
	
	
	
	
	<%@ include file="header.jsp" %>
	
	
	
	
	
	<main>
		<section id="hero_in" class="general">
			<div class="wrapper">
				<div class="container">
					<h1 class="fadeInUp"><span></span>Mon profil</h1>
				</div>
			</div>
		</section>
		<!--/hero_in-->
		<div class="container margin_60_35">
			<div class="row">
				<aside class="col-lg-3" id="sidebar">
					<div class="profile">
						<figure><img src="avatar2.png" alt="Teacher" class="rounded-circle"></figure>
						<ul class="social_teacher">
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-email"></i></a></li>
						</ul>
						<ul>
							<li>Enseignant <span class="float-right"><%=user.getFullName() %></span> </li>
							<li>Cours <span class="float-right">5</span></li>
							<li>Etudiants<span class="float-right">126</span></li>
						</ul>
					</div>
				</aside>
				<!--/aside -->

				<div class="col-lg-9">
					<div class="box_teacher">
						<div class="indent_title_in">
							<i class="pe-7s-user"></i>
							<h3>Profil</h3>
							<p>Mussum ipsum cacilds, vidis litro abertis.</p>
						</div>
						<div class="wrapper_indent">
							<p>Lorem ipsum dolor sit amet, dicta oportere ad est, ea eos partem neglegentur theophrastus. Esse voluptatum duo ne, expetenda corrumpit no per, at mei nobis lucilius. No eos semper aperiri neglegentur, vis noluisse quaestio no. Vix an nostro inimicus, qui ut animal fabellas reprehendunt. In quando repudiare intellegebat sed, nam suas dicta melius ea.</p>
							<!-- End row-->
						</div>
						<!--wrapper_indent -->
						<hr class="styled_2">
						<div class="indent_title_in">
							<i class="pe-7s-display1"></i>
							<h3>Mes cours</h3>
							<p>Mussum ipsum cacilds, vidis litro abertis.</p>
						</div>
						<div class="wrapper_indent">
							<table class="table table-responsive table-striped add_bottom_30">
									<thead>
										<tr>
											<th>Cours suivis</th>
											<th>Enseignant </th>
											<th>Avis</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Data Mining - partie 1</td>
											<td><a href="#">Souha Olfa</a></td>
											<td class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i> <i class="icon-star voted"></i></td>
										</tr>
										<tr>
											<td>Data Mining - partie 2</td>
											<td><a href="#">Souha Olfa</a></td>
											<td class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i> <i class="icon-star"></i></td>
										</tr>
										<tr>
											<td>I.A</td>
											<td><a href="#">Hamdi Kacem</a></td>
											<td class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i> <i class="icon-star"></i></td>
										</tr>


									</tbody>
								</table>
						</div>
						<!--wrapper_indent -->
					</div>
				</div>
				<!-- /col -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</main>
	<!--/main-->
	
	
	
	
	<%@ include file="footer.jsp" %>
	
	
	
	
	
	
	
	
	</div>
	<!-- page -->
	
	<!-- COMMON SCRIPTS -->
    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="js/common_scripts.js"></script>
    <script src="js/main.js"></script>
	<script src="assets/validate.js"></script>
	
</body>
</html>