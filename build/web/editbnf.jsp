
<%@page import="org.ps3.db.bnfDB"%>
<%@page import="org.ps3.entities.benef"%>
<%-- 
    Document   : affichage
    Created on : 5 nov. 2019, 17:04:08
    Author     : FZ
--%>


<%@page import="java.util.List"%>
<%@page import="org.ps3.entities.Pm"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Affichage</title
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

	<link href="https://fonts.googleapis.com/css/?family=Poppins:300,400,500,600" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css/?family=Nunito:200,300,400" rel="stylesheet">
	
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
							<div id="colorlib-logo"><a href="acceuil_admin.jsp">e-Nceinte</a></div>
						</div>
						<div class="col-md-10 text-right menu-1">
							<ul>
								<li class="has-dropdown">
											Comptes
											<ul class="dropdown">
												<li><a href="affichage.jsp">Afficher</a></li>
												<li><a href="ajout.jsp">Ajouter</a></li>
                                                <li><a href="chercher.jsp">Chercher</a></li>
											</ul>
										</li>
										
									
                                                                                <li class="has-dropdown">
											Bénéficiaires
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


		<section id="home" class="video-hero" style="height: 500px; background-image: url(images/cover_img_1.jpg);  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
		<div class="overlay"></div>
			<div class="display-t display-t2 text-center">
				<div class="display-tc display-tc2">
					<div class="container">
					
                                            <div class="animate-box"><br><br><br>
								<h1>Modifier les données </h1>
						
		
			
					   <center>
       
                        
            <% String numa = (String) request.getParameter("num");
             benef p = bnfDB.getBenefBynum(Integer.parseInt(numa));%>
             <h1> La bénéficiaire <%=p.getNom()%> <%=p.getPrenom()%></h1>
                	<form action='EditServletebnf' method='post'>
        <table>  
    	<tr><td></td><td><input type='hidden' name='num' value='<%=p.getNum_menage()%>'/></td></tr>  
             <tr><td>Nombre d'enfants:</td><td><input type='text' name='no' value='<%=p.getNbr_enfants()%>'/></td></tr>  
            	<tr><td>Observations:</td><td><input type='text' name='obs'value='<%=p.getObservations()%>'/></td></tr>
           
                <tr><td></td><td><input type='hidden' name='nom' value='<%=p.getNom()%>'/></td></tr>  
                <tr><td></td><td><input type='hidden' name='pr' value='<%=p.getPrenom()%>'/></td></tr>  
                <tr><td></td><td><input type='hidden' name='np' value='<%=p.getNom_pere()%>'/></td></tr>  
                <tr><td></td><td><input type='hidden' name='cin' value='<%=p.getCIN()%>'/></td></tr>  
                <tr><td></td><td><input type='hidden' name='tg' value='<%=p.getTest_gro()%>'/></td></tr>  
                <tr><td></td><td><input type='hidden' name='nm' value='<%=p.getNom_mere()%>'/></td></tr>  
                <tr><td>Adresse : </td><td><input type='text' name='adr' value='<%=p.getAdr()%>'/></td></tr>  
    	<tr><td colspan='2'><input type='submit' value='Edit & Save '/></td></tr>  
    	</table>  
    	</form>   
    
         
        </center>
	
											</div>
						</div>
					</div>
				</div>
			
	
                </section>	
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

