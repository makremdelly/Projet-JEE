<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Inscription | UDEMA</title>

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

<body id="register_bg">

	<nav id="menu" class="fake_menu"></nav>

	<div id="preloader">
		<div data-loader="circle-side"></div>
	</div>
	<!-- End Preload -->

	<div id="login">
		<aside>
			<figure>
				<a href="index.html"><img src="img/logo.png" width="149"
					height="42" data-retina="true" alt=""></a>
			</figure>
			<form autocomplete="off" action="inscription" method="POST">
				<div class="form-group">

					<%
						String msg = (String) request.getAttribute("ERROR");
						if (msg != null) {
					%>
					<font face="verdana" color="red"><b><%=msg%></b></font>
					<%
						}
					%>

					<span class="input"> <input class="input_field" type="text"
						name="nom"> <label class="input_label"> <span
							class="input__label-content">Nom complet</span>
					</label>
					</span>
					
					<span class="input">
					<input class="input_field"
						type="email" name="email">
						<label class="input_label">
							<span class="input__label-content">Email</span>
					</label>
					</span>
					
					
				
					
					
					<span class="input">
						<input class="input_field" type="password" id="password1"
						name="password"> <label class="input_label"> <span
							class="input__label-content">Mot de passe</span>
					</label>
					</span> <span class="input"> <input class="input_field"
						type="password"> <label class="input_label"> <span
							class="input__label-content">Confirmer le mot de passe</span>
					</label>
					</span>

					<div id="pass-info" class="clearfix"></div>
				</div>
				<input type="submit" value="S'inscrir"
					class="btn_1 rounded full-width add_top_30">
				<div class="text-center add_top_10">
					Vous avez d�j� un compte ? <strong><a href="connexion.jsp">Se
							connecter</a></strong>
				</div>
			</form>
			<div class="copy">� 2019 Udema</div>
		</aside>
	</div>



	<!-- /login -->

	<!-- COMMON SCRIPTS -->
	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/common_scripts.js"></script>
	<script src="js/main.js"></script>
	<script src="assets/validate.js"></script>

	<!-- SPECIFIC SCRIPTS -->
	<script src="js/pw_strenght.js"></script>

</body>
</html>