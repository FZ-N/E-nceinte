<%-- 
    Document   : insertdb
    Created on : 5 nov. 2019, 17:14:04
    Author     : FZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Création de comptes</title>
    </head>
    
         <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix ="sql"%>
                    
    <body>
    
        <sql:setDataSource var="dbSource" driver="org.apache.derby.jdbc.ClientDriver" url ="jdbc:derby://localhost:1527/PS3"
                           user = "fz"
                           password = "1234"/>
        <sql:update dataSource= "${dbSource}" var ="result">
            insert into users(login,mdp,mail,nom,prénom,service) values(?,?,?,?,?,?)
            <sql:param value ="${param.login}"/>
            <sql:param value ="${param.mdp}"/>
            <sql:param value ="${param.mail}"/>
            <sql:param value ="${param.nom}"/>
            <sql:param value ="${param.prénom}"/>
            <sql:param value ="${param.service}"/>
            
        </sql:update>
            <h1>L'utilisateur a bien été ajoutée !! </h1>
              <a href= "index.html">Revenir à la page d'accueil : </a>
    </body>
</html>
