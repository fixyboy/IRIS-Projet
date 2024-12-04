<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="controleur.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h3> Gestion des etudiants</h3>

<%@ include file="vue/vue-insert-etudiant.jsp" %>
<%
     if (request.getParameter("Valider") != null){
    	 String nom = request.getParameter("nom");
         String prenom = request.getParameter("prenom");
         String email =request.getParameter("email");
         String promotion =request.getParameter("promotion");
         int identreprise =Integer.parseInt(request.getParameter("identreprise"));
         
         //instancier la classe Entreprise
         Etudiant unEtudiant = new Etudiant (nom, prenom, email, promotion, identreprise);
         
         
         //insertion dans la BDD via controleur
         Controleur.insertEtudiant(unEtudiant);
     }

%>

<%
//recuperation des etudiants à partir des controleurs
ArrayList<Etudiant> lesEtudiants = Controleur.selectAllEtudiant ();
%>
<%@ include file="vue/vue-select-etudiant.jsp" %>


</center>

</body>
</html>