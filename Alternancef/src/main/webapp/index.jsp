<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="controleur.*" %>
    <%@ page import="java.util.ArrayList" %>"
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<%!
	int unePage = 1 ;
	User unUser = null;
	
	%>
	<%
	if(session.getAttribute("email") == null){
		%><%@ include file="vue/vue-connexion.jsp" %><%
	}
	if (request.getParameter("Connexion") != null){
			String email = request.getParameter("email");
			String mdp = request.getParameter("mdp");
			unUser = Controleur.verifConnexion(email, mdp);
			if(unUser != null){
				out.print("Bienvenue : "+ unUser.getNom());
				
				session.setAttribute("email", unUser.getEmail());
				session.setAttribute("nom", unUser.getNom());
				session.setAttribute("prenom", unUser.getPrenom());
				session.setAttribute("role", unUser.getRole());
				response.sendRedirect("index.jsp?page=1");
			} else {
				out.print("Veuillez vérifier vos identifiants");
			}
			
		}
		
		if(session.getAttribute("email") != null){
		%>
			<h1> Gestion de l'alternance IRIS </h1>
			<a href ="index.jsp?page=1"> <img alt="" src="images/logo.png" height="100" width="100"></a>
			<a href ="index.jsp?page=2"> <img alt="" src="images/etudiant.png" height="100" width="100"></a>
			<a href ="index.jsp?page=3"> <img alt="" src="images/entreprise.png" height="100" width="100"></a>
			<a href ="index.jsp?page=4"> <img alt="" src="images/deconnexion.png" height="100" width="100"></a>
			<%
			if(request.getParameter("page") != null){
				unePage = Integer.parseInt(request.getParameter("page"));
				
			}else{
				unePage = 1;
			}
			switch(unePage){
				case 1 : %> <%@ include file="home.jsp" %> <% break ; 
				case 2 : %> <%@ include file="etudiants.jsp" %> <% break ; 
				case 3 : %> <%@ include file="entreprises.jsp" %>  <% break;
				case 4 : session.invalidate(); response.sendRedirect("index.jsp"); break;
			}
		
		}
		
%>

</center>

</body>
</html>