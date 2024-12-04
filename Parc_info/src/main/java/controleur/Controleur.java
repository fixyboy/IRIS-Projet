package controleur;

import java.util.ArrayList;
import modele.Modele;

public class Controleur {
    /********* Gestion des users *********/
    public static User verifConnexion(String email, String mdp) {
        return Modele.verifConnexion(email, mdp);
    }

    /********* Gestion des employers *********/
    public static void insertEmployer(Employer unEmployer) {
        // Validate data if needed
        Modele.insertEmployer(unEmployer);
    }

    public static ArrayList<Employer> selectAllEmployers() {
        return Modele.selectAllEmployers();
    }

    public static ArrayList<Employer> selectLikeEmployers(String filtre) {
        return Modele.selectLikeEmployers(filtre);
    }

    public static void deleteEmployer(int idEmplo) {
        Modele.deleteEmployer(idEmplo);
    }

    public static Employer selectWhereEmployer(int idEmplo) {
        return Modele.selectWhereEmployer(idEmplo);
    }

    public static void updateEmployer(Employer unEmployer) {
        Modele.updateEmployer(unEmployer);
    }

    /********* Gestion des clients *********/
    public static void insertClient(Client unClient) {
        // Validate data if needed
        Modele.insertClient(unClient);
    }

    public static ArrayList<Client> selectAllClients() {
        return Modele.selectAllClients();
    }

    public static ArrayList<Client> selectLikeClients(String filtre) {
        return Modele.selectLikeClients(filtre);
    }

    public static void deleteClient(int idClient) {
        Modele.deleteClient(idClient);
    }

    public static Client selectWhereClient(int idClient) {
        return Modele.selectWhereClient(idClient);
    }

    public static void updateClient(Client unClient) {
        Modele.updateClient(unClient);
    }
}
