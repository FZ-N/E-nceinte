<%@page import="org.ps3.db.AmbulanceDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
	<script src="js/respond.min.js"></script>
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
							<div id="colorlib-logo"><a href="acceuil_conseil.jsp">e-Nceinte</a></div>
						</div>
						<div class="col-md-10 text-right menu-1">
							<ul>
								<li class="has-dropdown">
											<a href="acceuil_conseil.jsp">Ambulances</a>
											<ul class="dropdown">
											<li><a href="amb2.jsp">Nouvelle</a></li>
												<li><a href="amb1.jsp">Disponible</a></li>
                                                <li><a href="amb3.jsp">Envoyée</a></li>
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
                                                            								
    <%
          String adr = AmbulanceDB.getNotif();
           if (adr != null) 
           {
               AmbulanceDB.notif(adr);
           
        
        %>
  <dialog open> Le corps médical demande une ambulance
    
    
    <br>
    <button type="button"><a href="acceuil_conseil.jsp">Envoyer</a></button>
    </dialog>
    <dialog close>
  
  <%}%>
								<h2>Ajouter une ambulance</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
					 <div id="colorlib-contact">
			<div class="container">
				<div class="row">
				<form action ="AjouterAmbulance" methode ="post">
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
									<label >matricule</label>
									<input type="text"  class="form-control" placeholder="Matricule" name="matricule">
								</div>
								<div class="col-md-6">
									<label >disponibilite</label>
									  <select  name="disponibilite">
                        <option type="string" value="1">OUI</option>       
      <option type="string" value="0">NON</option>

  </select>
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-6">
									<label >etat</label>
									 <select  type="number" value="10" name="etat">
                        <option type="string" value="0">bon etat</option>       
      <option type="string" value="1">mauvaise etat</option>

  </select>
								</div>
								<div class="col-md-6">
									<label >lieu_actuel</label>
									<input type="text"  class="form-control" placeholder="lieu actuel" name ="lieu_actuel">
								</div>
							</div>
							<div class="col-md-6">
									<label >staff_medical</label>
									<input type="text"  class="form-control" placeholder="staff medical" name ="staff_medical">
								</div>
								<div class="col-md-6">
									<label >destination</label>
									<input type="text"  class="form-control" placeholder="destination" name="destination">
								</div>
								<div class="col-md-8">
									<label >date sortie</label>
									<input type="number"  class="form-control" id="date1" type="date" name="dates" placeholder="date sortie" >
								</div>
<div class="col-md-8">
									<label >date retour</label>
									<input type="number"  class="form-control" id="date2" type="date" name="dater" placeholder="date retour" >
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
