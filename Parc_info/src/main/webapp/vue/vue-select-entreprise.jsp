<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>employer</title>
	</head>
	<body>
		
		<h3> Liste des employers </h3>
		<form method="post">
		Filtrer par : <input type ="text" name="filtre"  >
		<input type ="submit" name ="Filtrer" value="Filtrer">
		
		</form>
		</br>
		<table border="1">
			<tr>
				<td> Id Employer </td>
				<td> Nom </td>
				<td> prenom </td>
				<td> Departement </td>
				<%
					if(session.getAttribute("role") != null && session.getAttribute("role").equals("admin")){
						out.print("<td>Operations</td>");
					}
				%>
			</tr>
		<%
		     String chaineEntreprises ="";
			for(Entreprise uneEntreprise : lesEntreprises){
				chaineEntreprises +="<tr>";
				chaineEntreprises +="<td>" + uneEntreprise.getIdentreprise () +"</td>";
				chaineEntreprises +="<td>" + uneEntreprise.getDesignation () +"</td>";
				chaineEntreprises +="<td>" + uneEntreprise.getAdresse () +"</td>";
				chaineEntreprises +="<td>" + uneEntreprise.getSecteurAct () +"</td>";
				if(session.getAttribute("role") != null && session.getAttribute("role").equals("admin")){
					chaineEntreprises +="<td>";
					chaineEntreprises +="<a href='index.jsp?page=3&action=sup&identreprise="+uneEntreprise.getIdentreprise ()+"'>";
					chaineEntreprises +="<img src='images/supprimer.png' height='30' width='30'>";
					chaineEntreprises +="</a>";
					
					chaineEntreprises +="<a href='index.jsp?page=3&action=edit&identreprise="+uneEntreprise.getIdentreprise ()+"'>";
					chaineEntreprises +="<img src='images/editer.png' height='30' width='30'>";
					chaineEntreprises +="</a>";
					
					chaineEntreprises +="</td>";
				}
				
				chaineEntreprises +="</tr>";
			}
		out.print(chaineEntreprises);
		%> 
		</table>
	</body>
</html>