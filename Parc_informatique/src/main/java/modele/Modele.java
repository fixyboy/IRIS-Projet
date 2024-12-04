package modele;


import java.sql.*;
import java.util.ArrayList;
import controleur.Entreprise;
import controleur.Etudiant;
import controleur.User;

public class Modele {
	//instanciation de la classe Connexion
	private static Connexion uneConnexion = new Connexion("localhost:3307", "alternance_iris", "root", "");
	
	/************ Gestion des entreprises ***********/
	public static void insertEntreprise (Entreprise uneEntreprise) {
		String requete = "insert into entreprise values (null, '"+uneEntreprise.getDesignation()
		+"','"+uneEntreprise.getAdresse()+"','"+uneEntreprise.getSecteurAct()+"'); "; 
		
		try {
			uneConnexion.seConnecter();
			Statement unStat = uneConnexion.getMaconnexion().createStatement(); 
			unStat.execute(requete); 
			unStat.close();
			uneConnexion.seDeconnecter();
		}
		catch (SQLException exp) {
			System.out.println("Erreur d'execution : "+requete);
		}
	}
	
	public static ArrayList<Entreprise> selectAllEntreprises (){
		ArrayList<Entreprise> lesEntreprises = new ArrayList<>(); 
		String requete = "select * from entreprise ; ";
		try {
			uneConnexion.seConnecter();
			Statement unStat = uneConnexion.getMaconnexion().createStatement(); 
			ResultSet desResultats = unStat.executeQuery(requete); 
			while(desResultats.next()) {
				//instancier une entreprise et ajouter dans l'ArrayList
				int identreprise = desResultats.getInt("identreprise"); 
				String designation = desResultats.getString("designation"); 
				String adresse = desResultats.getString("adresse"); 
				String secteurAct = desResultats.getString("secteurAct"); 
				Entreprise uneEntreprise = new Entreprise(identreprise, designation, adresse, secteurAct);
				
				lesEntreprises.add(uneEntreprise);
			}
			unStat.close();
			uneConnexion.seDeconnecter();
		}
		catch (SQLException exp) {
			System.out.println("Erreur d'execution : "+requete);
		}
		return lesEntreprises; 
	}
	public static ArrayList<Entreprise> selectLikeEntreprises (String filtre){
		ArrayList<Entreprise> lesEntreprises = new ArrayList<>(); 
		
		return lesEntreprises; 
	}
	public static void deleteEntreprise (int idEntreprise) {
		String requete ="delete from entreprise where identreprise ="+idEntreprise+";"; 
		try {
			uneConnexion.seConnecter();
			Statement unStat = uneConnexion.getMaconnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneConnexion.seDeconnecter();
		}
		catch (SQLException exp) {
			System.out.println("Erreur d'execution : "+requete);
		}
	}
	public static Entreprise selectWhereEntreprise (int idEntreprise) {
		Entreprise uneEntreprise = null; 
		String requete = "select * from entreprise  where identreprise = "+idEntreprise+";";
		try {
			uneConnexion.seConnecter();
			Statement unStat = uneConnexion.getMaconnexion().createStatement();
			ResultSet unRes = unStat.executeQuery(requete);
			if (unRes.next()) {
				int identreprise = unRes.getInt("identreprise"); 
				String designation = unRes.getString("designation"); 
				String adresse = unRes.getString("adresse"); 
				String secteurAct = unRes.getString("secteurAct");
				uneEntreprise= new Entreprise(identreprise,designation, adresse, secteurAct); 
			}
			unStat.close();
			uneConnexion.seDeconnecter();
		}
		catch (SQLException exp) {
			System.out.println("Erreur d'execution : "+requete);
		}
		return uneEntreprise;
	}
	public static void updateEntreprise (Entreprise uneEntreprise) {
		String requete ="update entreprise set designation='"+uneEntreprise.getDesignation()
		+ "', adresse = '"+uneEntreprise.getAdresse()+"' , secteurAct='"
		+ uneEntreprise.getSecteurAct()+"' where identreprise ="
		+uneEntreprise.getIdentreprise()+";";
		try {
			uneConnexion.seConnecter();
			Statement unStat = uneConnexion.getMaconnexion().createStatement();
			unStat.execute(requete);
			unStat.close();
			uneConnexion.seDeconnecter();
		}
		catch (SQLException exp) {
			System.out.println("Erreur d'execution : "+requete);
		}
	}
	
	/************ Gestion des etudiants ***********/
	public static void insertEtudiant (Etudiant unEtudiant) {
		
	}
	public static ArrayList<Etudiant> selectAllEtudiants (){
		ArrayList<Etudiant> lesEtudiants = new ArrayList<Etudiant>(); 
		
		return lesEtudiants; 
	}
	public static ArrayList<Etudiant> selectLikeEtudiants (String filtre){
		ArrayList<Etudiant> lesEtudiants = new ArrayList<Etudiant>(); 
		
		return lesEtudiants; 
	}
	public static void deleteEtudiant (int idEtudiant) {
		
	}
	public static Etudiant selectWhereEtudiant (int idEtudiant) {
		return null;
	}
	public static void updateEtudiant (Etudiant unEtudiant) {
		
	}
	
	/******* Gestion des Users *********/
	public static User verifConnexion(String email, String mdp) {
		User unUser = null;
		
		String requete = "select * from user  where email = '"+email+"'and mdp ='"+mdp+"';";
		try {
			uneConnexion.seConnecter();
			Statement unStat = uneConnexion.getMaconnexion().createStatement();
			ResultSet unRes = unStat.executeQuery(requete);
			if (unRes.next()) {
				int iduser = unRes.getInt("iduser");
				String nom = unRes.getString("nom");
				String prenom = unRes.getString("prenom");
				String role = unRes.getString("role");
				unUser= new User(iduser,nom, prenom, email, mdp, role);
			}
			unStat.close();
			uneConnexion.seDeconnecter();
		}
		catch (SQLException exp) {
			System.out.println("Erreur d'execution : "+requete);
		}
		return unUser;
	}
}