package dev.sgp.entite;

import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.util.ResourceBundle;

public class Collaborateur {
	private String matricule;
	private String nom;
	private String prenom;
	private String adresse;
	private String numeroSecu;
	private LocalDate dateNaissance;
	private String intitulePoste;
	private Departement departement;
	private String email;
	private String telephone;
	private ZonedDateTime dateCreation;
	private String photo;
	private boolean actif;
	
	private final String NON_RENSEIGNE="Non renseigné";
	private Integer CPT = 0;
	
	public Collaborateur(String nom, String prenom, String adresse, String numeroSecu, LocalDate dateNaissance) {
		CPT++;
		this.matricule = "M"+CPT;
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.numeroSecu = numeroSecu;
		this.dateNaissance = dateNaissance;
		this.intitulePoste = NON_RENSEIGNE;
		this.departement = new Departement(NON_RENSEIGNE);
		this.telephone =NON_RENSEIGNE;
		this.email=prenom+"."+nom+"@"+ResourceBundle.getBundle("application").getString("email_societe");;
		this.dateCreation= ZonedDateTime.now();
		this.photo="http://www.aovc.org/wp-content/uploads/2015/10/photo-%C3%A0-venir-400x369.jpg";
		this.actif=true;
	}
	/**Getter for id
	 * @return id
	 */
	public String getMatricule() {
		return matricule;
	}

	/**
	 * @param matricule the id to set
	 */
	public void setMatricule(String id) {
		this.matricule = matricule;
	}

	/**Getter for nom
	 * @return nom
	 */
	public String getNom() {
		return nom;
	}

	/**
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}

	/**Getter for prenom
	 * @return prenom
	 */
	public String getPrenom() {
		return prenom;
	}

	/**
	 * @param prenom the prenom to set
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	/**Getter for adresse
	 * @return adresse
	 */
	public String getAdresse() {
		return adresse;
	}

	/**
	 * @param adresse the adresse to set
	 */
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	/**Getter for numeroSecu
	 * @return numeroSecu
	 */
	public String getNumeroSecu() {
		return numeroSecu;
	}

	/**
	 * @param numeroSecu the numeroSecu to set
	 */
	public void setNumeroSecu(String numeroSecu) {
		this.numeroSecu = numeroSecu;
	}

	/**Getter for dateNaissance
	 * @return dateNaissance
	 */
	public LocalDate getDateNaissance() {
		return dateNaissance;
	}

	/**
	 * @param dateNaissance the dateNaissance to set
	 */
	public void setDateNaissance(LocalDate dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	/**Getter for fonction
	 * @return fonction
	 */
	public String getIntitulePoste() {
		return intitulePoste;
	}

	/**
	 * @param fonction the fonction to set
	 */
	public void setIntitulePoste(String intitulePoste) {
		this.intitulePoste = intitulePoste;
	}

	/**Getter for departement
	 * @return departement
	 */
	public Departement getDepartement() {
		return departement;
	}

	/**
	 * @param departement the departement to set
	 */
	public void setDepartement(Departement departement) {
		this.departement = departement;
	}

	/**Getter for email
	 * @return email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**Getter for telephone
	 * @return telephone
	 */
	public String getTelephone() {
		return telephone;
	}

	/**
	 * @param telephone the telephone to set
	 */
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	/**Getter for dateCreation
	 * @return dateCreation
	 */
	public ZonedDateTime getDateCreation() {
		return dateCreation;
	}

	/**
	 * @param dateCreation the dateCreation to set
	 */
	public void setDateCreation(ZonedDateTime dateCreation) {
		this.dateCreation = dateCreation;
	}

	/**Getter for photo
	 * @return photo
	 */
	public String getPhoto() {
		return photo;
	}

	/**
	 * @param photo the photo to set
	 */
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	/**Getter for actif
	 * @return actif
	 */
	public boolean isActif() {
		return actif;
	}
	/**
	 * @param actif the actif to set
	 */
	public void setActif(boolean actif) {
		this.actif = actif;
	}
	


}
