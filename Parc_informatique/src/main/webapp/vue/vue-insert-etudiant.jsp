<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			
<h3> Ajout d'un client</h3>
	<form method="post">
		<table>
			<tr> 
				<td> nom </td>
				<td> <input type ="text" name ="nom" > </td>
			</tr>
			<tr> 
				<td> prenom </td>
				<td> <input type ="text" name ="prenom" ></td>
			</tr>
			<tr> 
				<td> email </td>
				<td> <input type ="text" name ="email" > </td>
			</tr>
			<tr> 
				<td> secteur </td>
				<td> <input type ="text" name ="promotion" ></td>
			</tr>
			<tr> 
				<td> Parcinfo </td>
				<td> <input type ="text" name ="identreprise" ></td>
			</tr>
			<tr> 
				<td> <input type="reset" name="Annuler" value ="Annuler"> </td>
				<td> <input type="submit" name="Valider" value ="Valider"> 
			</tr>
		</table>
	</form>
 

</body>
</html>