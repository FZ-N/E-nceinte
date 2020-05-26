<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="org.ps3.entities.pre"%>
<%@page import="org.ps3.db.preDB"%>
<%@page import="org.ps3.db.AmbulanceDB"%>
<%@page import="org.ps3.entities.Ambulance"%>
<%@page import="java.util.List"%>
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
								
										
									
                                                            <li>
											<a href="bnf.jsp">Bénéficiaires</a>
										
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
								<h2>Phase prénatale </h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		 </section>
				<div class="colorlib-shop">
			<div class="container-fluid">
				
					  <% String bnf = (String) request.getParameter("bnf");
                        String num = (String) request.getParameter("num");
                        String p = (String) request.getParameter("pr");
                        
                      %>
 
<%
                    pre a = preDB.getByNum(Integer.parseInt(num),bnf);
                    int cpn = 1;
                             SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
      Date daterv = sdformat.parse("2019-04-15");  
       
          DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
         LocalDateTime now2 = LocalDateTime.now();
          Date now = sdformat.parse(dtf.format(now2));  
       
                 
                %>
                                  <%  if(Integer.parseInt(p) == 3 && a.getRv3() != null){
                      cpn =3;
                                     }%>
                                     <%  if(Integer.parseInt(p) == 4 && a.getRv4() == null){
                                   
                                          cpn =2;
              
                  daterv =  a.getD4();
                  
                   }%>
                      <%  if(Integer.parseInt(p) == 2 && a.getRv2() != null){
                   cpn =3;                     
                }%>
                                     <%  if(Integer.parseInt(p) == 3 && a.getD3() != null && a.getRv3() == null){
                                    cpn =2;
              
                  daterv =  a.getD3();
                   }%>
               <%  if(Integer.parseInt(p) == 1 && a.getRv1() != null ){
                                    
                                          cpn =3;
              
                   }%>
                   
                                     <%  if(Integer.parseInt(p) == 2 &&  a.getD2() != null && a.getRv2() == null){
                                cpn =2;
              
                  daterv =  a.getD2();
                   }%>

    <%  if(Integer.parseInt(p) == 1 && a.getRv1() == null && a.getD1() != null){
                                          cpn =2;
              
                  daterv =  a.getD1();
                   }%>
                       <%  if(Integer.parseInt(p) == 0 && a.getD1() == null){  
                           cpn =3; }%>

                

          Numéro de ménage : <%=a.getNum()%>
         <br>Nom de la femme     :  <%=a.getPrenom()%>
          <center>
    <%
          
           if (cpn == 2 &&   daterv.compareTo(now) == 0) 
           {
                    
        
        %>
  <dialog open> Veuillez valider le rendez-vous d'aujourd'hui 
    
  
                	<form action='EditServletep' method='post'>
        <table>  
    	<tr><td></td><td><input type='hidden' name='cpn' value='<%= cpn%>'/></td></tr>  
             <tr><td></td><td><input type='hidden' name='num' value='<%=num%>'/></td></tr>  
            	<tr><td></td><td><input type='hidden' name='bnf'value='<%= bnf%>'/></td></tr>
                <tr><td></td><td><input type='hidden' name='rv' value='<%= daterv %>'/></td></tr>
        <tr><td>OBS</td><td><input type='text' name='obs' value=''/></td></tr>  
    	<tr><td colspan='2'><input type='submit' value='Valider'/></td></tr>  
       
    	</table>  
    	</form> 
    
    </dialog>
  <%} 
    else if (daterv.compareTo(now) < 0 && cpn == 2)
        preDB.valide(Integer.parseInt(p), Integer.parseInt(num), bnf, 0, null);

          
         else if (cpn == 3) 
           {
                    
        
        %>
  <dialog open> Veuillez entrer la date du prochain rendez-vous  
    
  
                	<form action='EditServletep' method='post'>
        <table>  
    	<tr><td></td><td><input type='hidden' name='cpn' value='<%= cpn%>'/></td></tr>  
             <tr><td></td><td><input type='hidden' name='num' value='<%=num%>'/></td></tr>  
            	<tr><td></td><td><input type='hidden' name='bnf'value='<%= bnf%>'/></td></tr>
        <tr><td></td><td><input type='date' name='nrv' value='2020-01-01'/></td></tr>  
    	<tr><td colspan='2'><input type='submit' value='Valider'/></td></tr>  
        
    	</table>  
    	</form> 
    
    </dialog>
	 <%}%> 			
      </center>
               
<table class='aTable'>
		
		
                
               <tr><th>CPN</th><th>Date du rendez-vous</th><th>Réalisé ?</th>
                <th>Observations</th></tr>

   
                   
		<tr><td><%=1%></td>
                <td><%=a.getD1()%></td>
                <td>                    <%
                        if (a.getRv1() == "true")
                    %> OUI
 <%
                        if (a.getRv1() == "false")
                    %> NON</td>
                <td><%=a.getObs1()%></td>
             
                </tr>
                       
                
            
                <tr><td><%=2%></td>
                <td><%=a.getD2()%></td>
                <td>
                    <%
                        if (a.getRv2() == "true")
                    %> OUI
                    <%
                        if (a.getRv2() == "false")
                    %> NON
                </td>
                <td><%=a.getObs2()%></td>
                   
                   
                </tr>
                <tr><td><%=3%></td>
                <td><%=a.getD3()%></td>
                <td>                    <%
                        if (a.getRv3() == "true")
                    %> OUI
                    <%
                        if (a.getRv3() == "false")
                    %> NON</td>
                <td><%=a.getObs3()%></td>
               
                 
                </tr>    
                
              <tr><td><%=4%></td>
                <td><%=a.getD4()%></td>
                <td>                    <%
                        if (a.getRv4() == "true")
                    %> OUI
 <%
                        if (a.getRv4() == "false")
                    %> NON</td>
                <td><%=a.getObs4()%></td>
                   
                </tr>
                     
          
	  
	

</table>
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
