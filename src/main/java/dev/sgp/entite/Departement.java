package dev.sgp.entite;

public class Departement {
	
	private Integer id = 0;
	private String nom;
	
	private static int cpt=0;
	public Departement(String nom) {
		super();
		cpt++;
		this.id=cpt;
		this.nom = nom;
	}


	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return nom;
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

	
}
