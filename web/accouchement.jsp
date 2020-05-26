<%@page import="org.ps3.db.AccouchementDB"%>
<%@page import="java.util.List"%>
<%@page import="org.ps3.entities.Accouchement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE HTML>
<html>
	<head>
	 <jsp:useBean class="org.ps3.entities.Accouchement" id="Date">
        <jsp:setProperty name="DateD" property="DateD"/>
		<jsp:setProperty name="DateM" property="DateM"/>
    </jsp:useBean>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix ="sql"%>
    
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
		
	<div class="colorlib-loader"></div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-md-2">
                                     					<div id="colorlib-logo"><a href="acceuil_corps.html">E-nceinte</a></div>
					
						</div>
						<div class="col-md-10 text-right menu-1">
							<ul>
								<li class="has-dropdown">
											
											Beneficiaires
											<ul class="dropdown">
												<li><a href="ben3.html">Chercher</a></li>
											</ul>
										</li>
										
									
                                                                                <li class="has-dropdown">
											<a href="indexpm.jsp">Phases</a>
											<ul class="dropdown">
												<li><a href="prenatal.html">Prénatal</a></li>
												<li><a href="postnatal.html">Postnatal</a></li>
                                                                                                <li><a href="accouchement.html">Accouchement</a></li>
											</ul>
                                                                                        </li>
										<li><a href="contact2.html">Contact</a></li>
										<li><a href="index.html">Deconnexion </a></li>
									</ul>
					</div>
				</div>
			</div>
		</nav>

		<section id="home" class="video-hero" style="height: 700px; background-image: url(images/cover_img_1.jpg);  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
		<div class="overlay"></div>
			<a class="player" data-property="{videoURL:'https://www.youtube.com/watch?v=VK6vHBo9OWE',containment:'#home', showControls:false, autoPlay:true, loop:true, mute:true, startAt:0, opacity:1, quality:'default'}"></a> 
			 <center>
			 <div id="colorlib-contact">
			<div class="container">
				<div class="row">
				<form action ="../CalculerDate" methode ="post">
					<div class="col-md-4 col-md-push-8 animate-box">
						<h2>  </h2>
						<div class="row">
							<div class="col-md-12">
							</div>
						</div>
					</div>
					<div class="col-md-8 col-md-pull-4 animate-box">
						<h2>La date des dernieres menstruations :</h2>
						<form action="#">
							<div class="row form-group">
								<div class="col-md-6">
																<div class="col-md-6">
									<input type="date"  class="form-control" id="date" type="date" name="dateD" placeholder="01/01/2020" >
								</div>

							<div class="form-group">
								<input type="submit" value="Enregistrer" class="btn btn-primary">
								<input type="reset" value="Effacer" class="btn btn-primary">
							</div>
						</form>		
					</div>
				</div>
			</div>
				<div class="display-t text-center">
				<div class="display-tc">
					<div class="container">
						<div class="col-md-12 col-md-offset-0">
							<div class="animate-box">
								<p>Le bébé est du le :</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center colorlib-heading animate-box">
						<h2><%=Accouchement.getDateD()%></h2>
						<p>une ambulance sera automatiquement envoyer a la beneficiaire</p>
					</div>
				</div>


			
			
		</div>



        <footer id="colorlib-footer">
                    <div class="col-md-3 colorlib-widget">
<h4>A propos d'E-nceinte</h4>
<p>Au Maroc, le risque pour une femme rurale de mourir pendant la grossesse, l’accouchement ou le post-partum est deux fois supérieur par comparaison à celui de la femme vivant en ville.e-Nceinte permet d'éliminer l’implication d’une tierce personne entre le conseil communale gérant les ambulances et le staff médical, diminuant ainsi le temps d’intervention.</p>
<p>
</div>
                    
                               <div class="col-md-3 colorlib-widget">

</div>
                                        <div class="col-md-3 colorlib-widget">

</div>
			<div class="col-md-3 colorlib-widget">
<ul class="colorlib-footer-links">
<li>Al Irfane RABAT, <br> Maroc</li>
<li><a href="tel://1234567920"><i class="icon-phone"></i> +212 5 37 21 55 77</a></li>
<li><a href="mailto:info@yoursite.com"><i class="icon-envelope"></i> delmannani@interieur.gov.ma</a></li>
<li><a href="#"><i class="icon-location4"></i> http://www.indh.ma/</a></li>
</ul>
</div>
			
			<div class="copy">
				<div class="container">
					<div class="row">
						<div class="col-md-12 text-center">
							<p>
								
Copyright &copy;<script>document.write(new Date().getFullYear());</script><a href="http://www.indh.ma/" target="_blank">E-nceinte</a></p>
						</div>
					</div>
				</div>
			</div>
		</footer>

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

