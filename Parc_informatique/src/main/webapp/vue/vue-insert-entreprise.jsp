<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table des employers</title>
</head>
<body>
<h3> Ajout d'un empolyer </h3> 	

	<form method="post">
		<table>
			<tr> 
				<td> Nom </td>
				<td> <input type ="text" name ="designation" > </td>
			</tr>
			<tr> 
				<td> Adresse postale </td>
				<td> <input type ="text" name ="adresse" ></td>
			</tr>
			<tr> 
				<td> Departement </td>
				<td> <input type ="text" name ="secteurAct" > </td>
			</tr>
			<tr> 
				<td> <input type="reset" name="Annuler" value ="Annuler"> </td>
				<td> <input type="submit" name="Valider" value ="Valider"> 
			</tr>
		</table>
	</form>
 

</body>
</html>