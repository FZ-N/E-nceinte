<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.ps3.db.CompteDB"%>
<%@page import="java.util.List"%>
<%@page import="org.ps3.entities.Compte"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html>
    <head>
        <title>Chercher</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <jsp:useBean class="org.ps3.entities.Compte" id="cmp">
        <jsp:setProperty name="cmp" property="login"/>
                <jsp:setProperty name="cmp" property="service"/>
    </jsp:useBean>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix ="sql"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
    
   
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>e-Nceinte</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,300,400" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>


    
    <body>
         <sql:setDataSource var="dbSource" driver="org.apache.derby.jdbc.ClientDriver" url ="jdbc:derby://localhost:1527/PS3"
                           user = "fz"
                           password = "1234"/>
        <sql:query dataSource= "${dbSource}" var ="result">
          select * from users
        </sql:query>

       
		
	<div class="colorlib-loader"></div>

	<div id="page"><nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-md-2">
							<div id="colorlib-logo"><a href="acceuil_admin.jsp">e-Nceinte</a></div>
						</div>
						<div class="col-md-10 text-right menu-1">
							<ul>
								<li class="has-dropdown">
											<a href="admin.jsp">Comptes</a>
											<ul class="dropdown">
												<li><a href="affichage.jsp">Afficher</a></li>
												<li><a href="ajout.jsp">Ajouter</a></li>
                                                <li><a href="chercher.jsp">Chercher</a></li>
											</ul>
										</li>
										
									
                                                                                <li class="has-dropdown">
											<a href="beneficiaire.jsp">Bénéficiaires</a>
											<ul class="dropdown">
												<li><a href="ben1.jsp">Afficher</a></li>
												<li><a href="ben2.jsp">Ajouter</a></li>
                                                <li><a href="ben3.jsp">Chercher</a></li>
											</ul>
                                                                                        </li>
										<li><a href="contact.jsp">Contact</a></li>
										<li><a href="connexion.jsp">Deconnexion </a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>

		<section id="home" class="video-hero" style="height: 900px; background-image: url(images/cover_img_1.jpg);  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
		<div class="overlay"></div>
			<div class="display-t display-t2 text-center">
				<div class="display-tc display-tc2">
					<div class="container">
						<div class="col-md-12 col-md-offset-0">
                                                    <br><br>
<h2>Modification du Compte</h2>
						  <% String lp = (String) request.getParameter("login");
             Compte p = CompteDB.getCompteByLogin(lp);%>
						<form action="EditServlete2" methode ="post">
                                                    <h1><%=p.getLogin()%></h1>
                                                        
									<input type="hidden"  class="form-control" placeholder="Login" name="login" value='<%=p.getLogin()%>'>
							
									<label >Nouveau mot de passe:</label>
									<input type="password"  class="form-control" placeholder="Mot de Passe" name="mdp" value='<%=p.getMdp()%>'>
					

									<label >Nouvelle adresse mail:</label>
									<input type="text"  class="form-control" placeholder="E-mail" name ="mail" value='<%=p.getMail()%>'>
							
									<input type="hidden"  class="form-control" placeholder="Nom" name ="nom" value='<%=p.getNom()%>'>
									<input type="hidden"  class="form-control" placeholder="Prenom" name="prenom" value='<%=p.getPrenom()%>'>
							
							<div class="row form-group">
								<div class="col-md-8">
									<input type="hidden"  class="form-control" placeholder="service" name="service" value='<%=p.getService()%>'>
								</div>
							</div>

							<div class="form-group">
								<input type="submit" value="Enregistrer" class="btn btn-primary">
								<input type="reset" value="Effacer" class="btn btn-primary">
							</div>
						</form>		                   
        

								
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- YTPlayer -->
	<script src="js/jquery.mb.YTPlayer.min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>
