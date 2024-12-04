<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="controleur.*" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center> 
	
	<h3> Gestion des entreprises </h3>
	
	<%
	if(session.getAttribute("role") != null && session.getAttribute("role").equals("admin")){
		Entreprise uneE = null;
		if(request.getParameter("action")!= null && request.getParameter("identreprise") != null)
		{
			String action = request.getParameter("action"); 
			int idEntreprise = Integer.parseInt(request.getParameter("identreprise")); 
			switch (action){
			case "sup" : Controleur.deleteEntreprise( idEntreprise); break; 
			case "edit" : uneE = Controleur.selectWhereEntreprise(idEntreprise); break;
			}
		}
	%>
 
	
	<%@ include file="vue/vue-insert-entreprise.jsp" %>
	
	<%
		if (request.getParameter("Valider") != null){
			String designation = request.getParameter("designation"); 
			String adresse = request.getParameter("adresse"); 
			String secteurAct = request.getParameter("secteurAct"); 
			
			//instancier la classe Entreprise 
			Entreprise uneEntreprise = new Entreprise (designation, adresse, secteurAct);
			
			//insertion dans la BDD via le controleur 
			Controleur.insertEntreprise (uneEntreprise); 
			
			response.sendRedirect("index.jsp.page=3");
		}
	}
	%>
	
	<% 
		//recuperation des entreprises à partir du controleur 
		
		ArrayList<Entreprise> lesEntreprises = Controleur.selectAllEntreprises (); 
	%>
	
	<%@ include file="vue/vue-select-entreprise.jsp" %>
	
	
</center>
</body>
</html>