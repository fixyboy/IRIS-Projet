<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<center>
			<h3> Bienvenue dans le site Alternance</h3>
		<br>
			<h6> <%
				out.print("Nom : " + session.getAttribute("nom") + " " + session.getAttribute("prenom"));
				out.print("<br> Vous êtes en role de " + session.getAttribute("role"));
			%> </h6>
		</center>
	
	</body>
</html>