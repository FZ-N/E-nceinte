<%@page import="org.ps3.db.CompteDB"%>
<%@page import="java.util.List"%>
<%@page import="org.ps3.entities.Compte"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>e-Nceinte</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util1.css">
	<link rel="stylesheet" type="text/css" href="css/main1.css">
<!--===============================================================================================-->
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
								<h2>Liste des utilisateurs</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
				<div class="colorlib-shop">
			<div class="container-fluid">
				
					
						<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<%! List<Compte>  liste = CompteDB.getAllComptes();%>
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">Login</th>
									<th class="cell100 column2">Mail</th>
									<th class="cell100 column3">Nom</th>
									<th class="cell100 column4">Prénom</th>
									<th class="cell100 column5">Service</th>
                                                                    <th class="cell100 column6">Modifier</th>                                                        									<th class="cell100 column7">Supprimer</th>

								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
							 <%for (Compte p:liste){%>
								<tr class="row100 body">
									<td class="cell100 column1"><%=p.getLogin()%></td>
									<td class="cell100 column2"><%=p.getMail()%></td>
									<td class="cell100 column3"><%=p.getNom()%></td>
									<td class="cell100 column4"><%=p.getPrenom()%></td>
									<td class="cell100 column5"> <% if (p.getService().equals("0")){
                                                
                                                                            %> Admin<% } else if (p.getService().equals("1")){
                                                
                                                                            %> Medecin<% }else if (p.getService().equals("2")){
                                                
                                                                            %> CC<% }%>
 
 
                                                                        </td>
									<td class="cell100 column6"><a href='edit.jsp?login=<%=p.getLogin()%>'><img src="images/edit.png"  style="width:25px;height:25px;"></a></td>
									<td class="cell100 column7"><a href='DeleteServlete?login=<%=p.getLogin()%>'><img src="images/off.png"  style="width:25px;height:25px;"></a></td>
								</tr>
                                                                <%}%>
							</tbody>
						</table>
					</div>
				</div>
					</div>
					
					</div>
				
			
	

	
       
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
<!--===============================================================================================-->
	<script src="js/main1.js"></script>

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
