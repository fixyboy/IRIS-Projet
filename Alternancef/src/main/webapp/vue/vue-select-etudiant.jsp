<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> Liste des etudiants </h3>
<form method="post">
Filtrer par : <input type ="text" name="filtre"  >
<input type ="submit" name ="Filtrer" value="Filtrer">

</form>
</br>
<table border="1">
<tr>
<td> Id Etudiant </td>
<td> Nom </td>
<td> Prénom </td>
<td>Email</td>
<td> Promotion </td>
<td> Etudiant </td>
</tr>
<%
     String chaineEtudiants ="";
for(Etudiant unEtudiant : lesEtudiants){
	chaineEtudiants +="<tr>"; 
	chaineEtudiants +="<td>" + unEtudiant.getIdetudiant () +"</td>";
	chaineEtudiants +="<td>" + unEtudiant.getNom () +"</td>";
	chaineEtudiants +="<td>" + unEtudiant.getPrenom () +"</td>";
	chaineEtudiants +="<td>" + unEtudiant.getEmail() +"</td>";
	chaineEtudiants +="<td>" + unEtudiant.getPromotion() +"</td>";
	chaineEtudiants +="<td>" + unEtudiant.getIdentreprise() +"</td>";
	
}
out.print(chaineEtudiants);
%>
</table>

</body>
</html>