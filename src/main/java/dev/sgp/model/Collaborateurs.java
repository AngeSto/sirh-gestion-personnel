package dev.sgp.model;

public class Collaborateurs {
	String nom;
	String prenom;
	String fonction;
	String departement;
	String email;
	String telephone;
	
	public Collaborateurs(String nom, String prenom, String fonction, String departement, String email,
			String telephone) {
		this.nom = nom;
		this.prenom = prenom;
		this.fonction = fonction;
		this.departement = departement;
		this.email = email;
		this.telephone = telephone;
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

	/**Getter for fonction
	 * @return fonction
	 */
	public String getFonction() {
		return fonction;
	}

	/**
	 * @param fonction the fonction to set
	 */
	public void setFonction(String fonction) {
		this.fonction = fonction;
	}

	/**Getter for departement
	 * @return departement
	 */
	public String getDepartement() {
		return departement;
	}

	/**
	 * @param departement the departement to set
	 */
	public void setDepartement(String departement) {
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
	


}
