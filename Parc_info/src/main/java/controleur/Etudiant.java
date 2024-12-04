package controleur;

public class Etudiant {
	private int idetudiant ;
	private String nom, prenom, email, promotion;
	private int identreprise ;
	public Etudiant(int idetudiant, String nom, String prenom, String email, String promotion, int identreprise) {
		super();
		this.idetudiant = idetudiant;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.promotion = promotion;
		this.identreprise = identreprise;
	}
	
	public Etudiant(String nom, String prenom, String email, String promotion, int identreprise) {
		super();
		this.idetudiant = 0;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.promotion = promotion;
		this.identreprise = identreprise;
	}

	public int getIdetudiant() {
		return idetudiant;
	}

	public void setIdetudiant(int idetudiant) {
		this.idetudiant = idetudiant;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPromotion() {
		return promotion;
	}

	public void setPromotion(String promotion) {
		this.promotion = promotion;
	}

	public int getIdentreprise() {
		return identreprise;
	}

	public void setIdentreprise(int identreprise) {
		this.identreprise = identreprise;
	}
	
	

}
