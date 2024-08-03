<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.User" %>    
    
    
    <% User user = (User) session.getAttribute("user");%>
    
    
<header class="header menu_2">
		<div id="preloader"><div data-loader="circle-side"></div></div><!-- /Preload -->
		<div id="logo">
			<a href="index.html"><img src="img/logo.png" width="149" height="42" data-retina="true" alt=""></a>
		</div>
		<% 
		if(user==null){
		%>
				<ul id="top_menu">
			<li><a href="login" class="login">Login</a></li>
			<li><a href="#0" class="search-overlay-menu-btn">Search</a></li>
			<li class="hidden_tablet"><a href="inscription" class="btn_1 rounded">S'inscrir</a></li>
		</ul>
		<%} %>
		<!-- /top_menu -->
		
		<% 
		if(user!=null){
		%>
		<nav id="menu" class="main-menu">
			<ul>
				<li><span><a href="home">Accueil</a></span></li>
				<li><span><a href="cours_grille.jsp">Cours</a></span></li>
				<li><span><a href="profil.jsp"><%= user.getFullName() %></a></span>
					<ul>
						<li><a href="profil.jsp">Mon profil</a></li>
						<li><a href="wishlist.jsp">Ma liste d'envies</a></li>
						<li><a href="logout">Se déconnecter</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<%} %>
		<!-- Search Menu -->
		<div class="search-overlay-menu">
			<span class="search-overlay-close"><span class="closebt"><i class="ti-close"></i></span></span>
			<form role="search" id="searchform" method="get">
				<input value="" name="q" type="search" placeholder="Search..." />
				<button type="submit"><i class="icon_search"></i>
				</button>
			</form>
		</div><!-- End Search Menu -->
	</header>
	<!-- /header -->