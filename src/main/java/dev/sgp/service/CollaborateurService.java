package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.entite.Collaborateur;

public class CollaborateurService {
	List<Collaborateur> listCollabo = new ArrayList<>();
	
	public List<Collaborateur> listerCollabo(){
		return listCollabo;
	}
	public void sauvegarderCollabo(Collaborateur collabo){
		listCollabo.add(collabo);
	}

}
