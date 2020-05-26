<!DOCTYPE html>

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
	<title>unapp Template</title>
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

								 <h2>Chercher par : </h2>
                                                                   <center>
        
        <form action="chercher.jsp" method = "post">
            <table border="0">
                <tr> 
                    <td><p>Login : </p>  </td>
                    <td><input type="text" name="login"></td>
               <td><input type="hidden" ></td>
                    
                    <td><input type="submit" value="Chercher"></td>
                </tr>
                   <tr> 
                    <td><p>Service : </p>  </td>
                    <td>     <select  name="service">
                             <option type="number" value="10">Choisir</option>
      <option type="number" value="0">Admin</option>
      <option type="number" value="1">Médecin</option>
      <option type="number" value="2">CC</option>
    </select>
                  </td>
               
                     <td><input type="hidden" ></td>
                    <td><input type="submit" value="Chercher"></td>
                </tr>
            </table>
        </form>
                                                        </center>

      <br>
            <c:set var = "on" scope = "session" value = "${1}"/>
           
            <c:forEach var = "row" items ="${result.rows}">
                <c:if test="${row.login == cmp.login}">
                      <c:set var = "on" scope = "session" value = "${0}"/>
                      <center>
                          <table  class="aTable">
                                 <tr>
                    <th>Login</th>
                  <th>mail</th>
                  <th>Nom</th>
                  <th>Prenom</th>
                  <th>Service</th>
                  <th></th>
                  <th> </th>

              </tr> 
                      <tr>
                         <td>${row.login}</td>
                      <td>${row.mail}</td>
                        <td>${row.nom}</td>
                          <td>${row.prenom}</td>
                      <td>
                          <c:if test="${row.service == 0}">
                              <c:out value="Admin"></c:out>
                          </c:if>
                          <c:if test="${row.service == 1}">
                              <c:out value="Medecin"></c:out>
                          </c:if>
                          <c:if test="${row.service == 2}">
                              <c:out value="CC"></c:out>
                          </c:if>
                      
                      </td>
             
                 <td><a href='edit.jsp?login=${row.login}'><img src="images/edit.png"  style="width:25px;height:25px;"></a>
                 </td>
                 <td><a href='DeleteServlete?login=${row.login}'><img src="images/off.png"  style="width:25px;height:25px;"></a></td>
             </tr>
                  </tr>
                
                  </table>
                 
                       </center>
                   
                                        
                </c:if>
            </c:forEach>
              <c:if test="${cmp.service<3}">
                 
                   <center>
                          <table  class="aTable">
                                 <tr>
                    <th>Login</th>
                  <th>mail</th>
                  <th>Nom</th>
                  <th>Prenom</th>
               
                  <th></th>
                  <th> </th>

              </tr> 
                 <c:forEach var = "row" items ="${result.rows}">
                <c:if test="${row.service == cmp.service}">
                      <c:set var = "on" scope = "session" value = "${0}"/>
                     
                      <tr>
                         <td>${row.login}</td>
                      <td>${row.mail}</td>
                        <td>${row.nom}</td>
                          <td>${row.prenom}</td>
                     
             
                 <td><a href='edit.jsp?login=${row.login}'><img src="images/edit.png"  style="width:25px;height:25px;"></a>
                 </td>
                 <td><a href='DeleteServlete?login=${row.login}'><img src="images/off.png"  style="width:25px;height:25px;"></a></td>
             </tr>
                 
                   
                         </c:if>               
         
            </c:forEach>
                          </tr>
                
                  </table>
                 
                       </center>
                    </c:if> 
                   
        

								
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
