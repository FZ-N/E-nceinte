<!DOCTYPE html>

<html>
    <head>
        <title>Authentification</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <jsp:useBean class="org.ps3.login.login" id="login">
        <jsp:setProperty name="login" property="username"/>
        <jsp:setProperty name="login" property="mdp"/>
    </jsp:useBean>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix ="sql"%>
    
    <body>
         <sql:setDataSource var="dbSource" driver="org.apache.derby.jdbc.ClientDriver" url ="jdbc:derby://localhost:1527/PS3"
                           user = "fz"
                           password = "1234"/>
        <sql:query dataSource= "${dbSource}" var ="result">
          select * from users
        </sql:query>

        <h1>Se connecter : </h1>
        
        <form action="Authentification.jsp" method = "post">
            <table border="1">
                <tr> 
                    <td>Login  </td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr> 
                    <td>Mot de passe </td>
                    <td><input type="text" name="mdp"></td>
                </tr>
                 <tr>
                    <td><input type="submit" value="Se connecter"></td>
                </tr>
            </table>
        </form>

      <br>
            <c:set var = "on" scope = "session" value = "${1}"/>
           
            <c:forEach var = "row" items ="${result.rows}">
                <c:if test="${row.login == login.username}">
                      <c:set var = "on" scope = "session" value = "${0}"/>
                      <c:if test="${row.mdp != login.mdp}">
                         Mot de passe invalide
                       
                      </c:if>
                      <c:if test="${row.mdp == login.mdp}">
                         <c:redirect url = "index.html"/>
                      </c:if>                        
                </c:if>
            </c:forEach>
                         
            <c:if test = "${on != 0}">
                <c:if test = "${login.username != NULL}">
                 Login introuvable !
                </c:if> 
            </c:if>  

 
	
    </body>
</html>
