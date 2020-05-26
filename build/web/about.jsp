<!DOCTYPE HTML>
<html>
	<head>
	 <jsp:useBean class="org.ps3.entities.Compte" id="login">
        <jsp:setProperty name="login" property="login"/>
        <jsp:setProperty name="login" property="mdp"/>
         <jsp:setProperty name="login" property="service"/>
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
                                     					<div id="colorlib-logo"><a href="index.html">E-nceinte</a></div>
					
						</div>
						<div class="col-md-10 text-right menu-1">
							<ul>
                                                                                <li><a href="connexion.jsp">Connexion </a></li>
                                                                                <li><a href="about.jsp">A propos</a></li>
										<li><a href="contact.jsp">Contact</a></li>
										
									</ul>
					</div>
				</div>
			</div>
		</nav>

	<section id="home" class="video-hero" style="height: 300px; background-image: url(images/cover_img_1.jpg);  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
		<div class="overlay"></div>
			<div class="display-t display-t2 text-center">
				<div class="display-tc display-tc2">
					<div class="container">
						<div class="col-md-12 col-md-offset-0">
							<div class="animate-box">
								<h2>A PROPOS </h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		 </section>

		<div class="colorlib-work">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="work-flex">
							<div class="half animate-box">
								<div class="row no-gutters">
									<div class="col-md-12 col-md-push-12 no-gutters">
										<a href="#" class="work-img" style="background-image: url(images/images.jpg);"></a>
									</div>
								</div>
							</div>
							<div class="half animate-box">
								<div class="row no-gutters">
									<div class="col-md-12 col-md-pull-12 no-gutters">
										<div class="display-t desc">
											<div class="display-tc">
												<h2><a href="#">Finalités du projet</a></h2>
												<p>L'objectif principal est de répondre aux attentes de très nombreux dirigeants sportifs qui souhaitent bénéficier d'une information concrète et de qualité, d'un accompagnement, de conseils..</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-12">
						<div class="work-flex">
							<div class="half animate-box">
								<div class="row no-gutters">
									<div class="col-md-12 no-gutters">
										<a href="#" class="work-img" style="background-image: url(images/indh_dar_al_oumouma_7_mamans_avec_bebe_.jpg);"></a>
									</div>
								</div>
							</div>
							<div class="half animate-box">
								<div class="row no-gutters">
									<div class="col-md-12 no-gutters">
										<div class="display-t desc">
											<div class="display-tc">
												<h2><a href="#">Ressources mises en place</a></h2>
												<p>Il ne s'agit en aucun cas de créer une structure supplémentaire qui viendrait se juxtaposer ou se surajouter à  celles déjà  en place. les centres ressources doivent en priorité s'appuyer sur des structures associatives déjà  existantes.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-12">
						<div class="work-flex">
							<div class="half animate-box">
								<div class="row no-gutters">
									<div class="col-md-12 col-md-push-12 no-gutters">
										<a href="#" class="work-img" style="background-image: url(images/indh_dar_al_oumouma_9_mamans_avec_bebe_.jpg);"></a>
									</div>
								</div>
							</div>
							<div class="half animate-box">
								<div class="row no-gutters">
									<div class="col-md-12 col-md-pull-12 no-gutters">
										<div class="display-t desc">
											<div class="display-tc">
												<h2><a href="#">Pourquoi e-Nceinte ?</a></h2>
												<p>Les conseils peuvent porter sur : les obligations comptables, les déclarations fiscales et sociales (dads1, urssaf), l'édition de bulletins de salaire, des préconisations en matière juridique, de projets de développement ou financiers particuliers, etc...</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>



        <footer id="colorlib-footer">
                    <div class="col-md-3 colorlib-widget">
<h4>A propos d'E-nceinte</h4>
<p>Au Maroc, le risque pour une femme rurale de mourir pendant la grossesse, l'accouchement ou le post-partum est deux fois supérieur par comparaison à celui de la femme vivant en ville. e-Nceinte permet d'éliminer l'implication d'une tierce personne entre le conseil communale gérant les ambulances et le staff médical, diminuant ainsi le temps d'intervention.</p></div>
 

                    
                               <div class="col-md-3 colorlib-widget">

</div>
                                        <div class="col-md-3 colorlib-widget">

</div>
			<div class="col-md-30 colorlib-widget">
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

