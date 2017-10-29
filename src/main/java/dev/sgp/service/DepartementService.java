package dev.sgp.service;

import dev.sgp.entite.Departement;
import java.util.ArrayList;
import java.util.List;

public class DepartementService {
	List <Departement> listDepart = new ArrayList<>();
	
	
	public DepartementService(){
		listDepart.add(new Departement("Informatique"));
		listDepart.add(new Departement("Ressources Humaines"));
		listDepart.add(new Departement("Comptabilité"));
		listDepart.add(new Departement("Administratif"));
	}
	
	public List <Departement> listerDepartement(){
		return listDepart;
	}
}
