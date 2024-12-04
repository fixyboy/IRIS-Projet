package controleur;

public class Entreprise {
	private int identreprise ;
	private String designation , adresse, secteurAct ;
	public Entreprise(int identreprise, String designation, String adresse, String secteurAct) {
		super();
		this.identreprise = identreprise;
		this.designation = designation;
		this.adresse = adresse;
		this.secteurAct = secteurAct;
	}
	
	public Entreprise(String designation, String adresse, String secteurAct) {
		super();
		this.identreprise = 0;
		this.designation = designation;
		this.adresse = adresse;
		this.secteurAct = secteurAct;
	}

	public int getIdentreprise() {
		return identreprise;
	}

	public void setIdentreprise(int identreprise) {
		this.identreprise = identreprise;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getSecteurAct() {
		return secteurAct;
	}

	public void setSecteur(String secteur) {
		this.secteurAct = secteurAct;
	}
	
	
	
	
	

}
