<%-- 
    Document   : index
    Created on : 26 nov. 2019, 16:26:57
    Author     : FZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PM</title>
    </head>
    <body>
        <h1>Ajoutez les données d'une béneficiaire </h1>
        <form action ="AjouterPm" methode ="post">
            <table>
             
                <tbody>
                    <tr>
                        <td>
                            <label>Id beneficiaire</label>
                        </td>
                         <td>
                             <input type ="text" name ="idb"/>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            <label>Date début</label>
                        </td>
                         <td>
                             <input type ="date" name ="dated"/>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            <label>Date fin</label>
                        </td>
                         <td>
                             <input type ="date" name ="datef"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Statut</label>
                        </td>
                         <td>
                             <input type ="text" name ="statut"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Rendez-vous</label>
                        </td>
                         <td>
                             <input type ="text" name ="rv"/>
                        </td>
                    </tr>
                        <tr>
                        <td>
                            <label>prochain Rendez-vous</label>
                        </td>
                         <td>
                             <input type ="date" name ="nrv"/>
                        </td>
                    </tr>
                      
                      <tr>
                        <td>
                          <input type ="submit" value ="Enregistrer"/>
                        </td>
                         <td>
                             <input type ="reset" value ="Reset"/>
                        </td>
                    </tr>
                </tbody>
                    
                    
            </table>
        </form>
        <a href="AfficherPm"> Liste Produits </a>
    </body>
</html>
