<!DOCTYPE html>

<html>
    <head>
        <title>Chercher</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <jsp:useBean class="org.ps3.entities.benef" id="bnf">
        <jsp:setProperty name="bnf" property="CIN"/>
               <jsp:setProperty name="bnf" property="test_gro"/>
    </jsp:useBean>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix ="sql"%>
    
   
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
          select * from ben
        </sql:query>

       
		
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

		<section id="home" class="video-hero" style="height: 900px; background-image: url(images/cover_img_1.jpg);  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
		<div class="overlay"></div>
			<div class="display-t display-t2 text-center">
				<div class="display-tc display-tc2">
					<div class="container">
						<div class="col-md-12 col-md-offset-0">
                                                    <br><br>
 <br><br> <br><br>
								 <h2>Chercher par : </h2>
                                                                   <center>
        
        <form action="bnf.jsp" method = "post">
            <table border="0">
                <tr> 
                    <td><p>CIN : </p>  </td>
                    <td><input type="text" name="CIN"></td>
               
                    
                    <td><input type="submit" value="Chercher"></td>
                </tr>
                   <tr> 
                    <td><p>Test de gro : </p>  </td>
                    <td><select  name="test_gro">
                             <option type="number" value="10">Choisir</option>
      <option type="number" value="0">Negatif</option>
      <option type="number" value="1">Positif</option>
    </select></td>
               
                    
                    <td><input type="submit" value="Chercher"></td>
                </tr>
            </table>
        </form>
                                                        </center>

      <br>
     
       <c:if test="${bnf.test_gro==0}">   
      <c:set var = "on" scope = "session" value = "${false}"/>
           </c:if>  
      <c:if test="${bnf.test_gro==1}">   
      <c:set var = "on" scope = "session" value = "${true}"/>
           </c:if>  
            <c:forEach var = "row" items ="${result.rows}">
              
                <c:if test="${row.CIN == bnf.CIN}">
                                         
                   
                      <center>
                          <table  class="aTable">
                                 <tr>
                                    <th>num menage</th>
                                    <th>CIN</th>
                                    <th>nom</th>
                                    <th>prenom</th>
                                    <th>nom_pere</th>
                                    <th>nom_mere</th>
                                    <th>test_gro</th>
                                    <th>nombres d'enfants</th>
                                    <th>Observations</th>
                                   

              </tr> 
                      <tr>
                        <td><c:out value="${row.num_menage}"/></td>
                        <td><c:out value="${row.cin}"/></td>
                          <td><c:out value="${row.nom}"/></td>
                            <td><c:out value="${row.prenom}"/></td>
                        <td><c:out value="${row.nom_pere}"/></td>
                        <td><c:out value="${row.nom_mere}"/></td>
                        <td>
                            <c:if test="${row.test_gro == false}">
                              <c:out value="N"></c:out>
                          </c:if>
                          <c:if test="${row.test_gro ==  true}">
                              <c:out value="P"></c:out>
                          </c:if>
                                              
                        
                        </td>
                        <td><c:out value="${row.nbr_enfants}"/></td>
                        <td><c:out value="${row.observations}"/></td>
             
                
                 
                      
             </tr>
                  </tr>
                
                  </table>
                  <td><a href='EditServleteamb?adr=${row.adr}&bnf=${row.nom}+${row.prenom}'><input type="submit" name="boutons" value="Demander une ambulance" onclick="confirm('Confirmer?')"></a></td>
                  <td><a href='EditServletep?num=${row.num_menage}&bnf=${row.prenom}&cpn=0'><input type="submit" name="boutons" value="Afficher les détails" </a></td>
             
                       </center>
                   
                                        
                </c:if>
            </c:forEach>
              
              <c:if test="${bnf.test_gro<2}">
                   <center>
                          <table  class="aTable">
                                 <tr>
                     <th>num menage</th>
                                    <th>CIN</th>
                                    <th>nom</th>
                                    <th>prenom</th>
                                    <th>nom_pere</th>
                                    <th>nom_mere</th>
                                
                                    <th>nombres d'enfants</th>
                                    <th>Observations</th>
                  <th></th>
                  <th> </th>

              </tr> 
                 <c:forEach var = "row" items ="${result.rows}">
                <c:if test="${row.test_gro eq on}">
                                        
                      <tr>
                         <td><c:out value="${row.num_menage}"/></td>
                        <td><c:out value="${row.cin}"/></td>
                          <td><c:out value="${row.nom}"/></td>
                            <td><c:out value="${row.prenom}"/></td>
                        <td><c:out value="${row.nom_pere}"/></td>
                        <td><c:out value="${row.nom_mere}"/></td>
                 
                        <td><c:out value="${row.nbr_enfants}"/></td>
                        <td><c:out value="${row.observations}"/></td>
                
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
