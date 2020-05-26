<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
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
	<script src="../js/respond.min.js"></script>
	<![endif]-->

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajouter un nouveau compte</title>

    </head>
    <body>

<div id="page">
<nav class="colorlib-nav" role="navigation">
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

		<section id="home" class="video-hero" style="height: 300px; background-image: url(images/cover_img_1.jpg);  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
		<div class="overlay"></div>
			<div class="display-t display-t2 text-center">
				<div class="display-tc display-tc2">
					<div class="container">
						<div class="col-md-12 col-md-offset-0">
							<div class="animate-box">
								<h2>Ajout d'une nouvelle beneficiare</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		
		
		
					 <div id="colorlib-contact">
			<div class="container">
				<div class="row">
				<form action ="Ajouterbnf" methode ="post">
					<div class="col-md-4 col-md-push-8 animate-box">
						<h2>  </h2>
						<div class="row">
							<div class="col-md-12">
							</div>
						</div>
					</div>
					<div class="col-md-8 col-md-pull-4 animate-box">
						
						<form action="#">
							<div class="row form-group">
								<div class="col-md-6">
									<label >Numero de menage</label>
									<input type="text"  class="form-control" placeholder="Numero de menage" name="num">
								</div>
								<div class="col-md-6">
									<label >CIN</label>
									<input type="text"  class="form-control" placeholder="CIN" name="cin">
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-6">
									<label >Nom du pere</label>
									<input type="text"  class="form-control" placeholder="Nom du pere" name ="np">
								</div>
								<div class="col-md-6">
									<label >Nom de la mere</label>
									<input type="text"  class="form-control" placeholder="Nom de la mere" name ="nm">
								</div>
							</div>
							<div class="col-md-6">
									<label >Nom</label>
									<input type="text"  class="form-control" placeholder="Nom" name ="nom">
								</div>
								<div class="col-md-6">
									<label >Prénom</label>
									<input type="text"  class="form-control" placeholder="Prenom" name="pr">
								</div>
								<div class="col-md-6">
									<label >Nombre d'enfants</label>
									<input type="number"  class="form-control" placeholder="Nombre d'enfants" name="no">
								</div>

							<div class="row form-group">
								<div class="col-md-8">
									<label >Test de grosesse</label>
									<select  name="tg">
      <option value="0">Positif</option>
      <option value="1">Negatif</option>
    </select>
								</div>
								<div class="col-md-12">
									<label >Observations</label>
									<input type="number"  class="form-control" placeholder="Observations" name="obs">
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
							<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script><a href="http://www.indh.ma/" target="_blank">E-nceinte</a></p>
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

