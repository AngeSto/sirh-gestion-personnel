package dev.sgp.web;

import java.io.IOException;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.entite.Departement;
import dev.sgp.service.CollaborateurService;
import dev.sgp.service.DepartementService;
import dev.sgp.util.Constantes;

public class EditerCollaborateursController extends HttpServlet {
	private CollaborateurService collaboService = Constantes.COLLAB_SERVICE;
	private DepartementService departService = Constantes.DEPART_SERVICE;

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		List<Collaborateur> list = collaboService.listerCollabo();
		Optional<Collaborateur> optional = list.stream().filter(collabo -> collabo.getMatricule().equals(req.getParameter("matricule"))).findFirst();
		if (optional.isPresent()){
			Collaborateur collabo = optional.get();
			req.setAttribute("Collabo", collabo);
			req.setAttribute("listDepart", departService.listerDepartement());
		}
		req.getRequestDispatcher("/WEB-INF/views/collab/editer.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");

		List<Collaborateur> list = collaboService.listerCollabo();
		List<Departement> listDepart = departService.listerDepartement();
		Optional<Collaborateur> optional = list.stream().filter(collabo -> collabo.getMatricule().equals(req.getParameter("Matricule"))).findFirst();
		if (optional.isPresent()){
			Collaborateur collabo = optional.get();
			collabo.setAdresse(req.getParameter("Adresse"));
			collabo.setTelephone(req.getParameter("Telephone"));
			Optional<Departement> departement= listDepart.stream().filter(depart -> depart.getNom().equals(req.getParameter("Departement"))).findFirst();
			if(departement.isPresent()){
				collabo.setDepartement(departement.get());
			}
			collabo.setIntitulePoste(req.getParameter("Poste"));
			collabo.setIban(req.getParameter("IBAN"));
			collabo.setBic(req.getParameter("BIC"));
			if (req.getParameter("Desactif")!=null){
				collabo.setActif(false);
			} else {
				collabo.setActif(true);
			}
		}
		
		
		req.setAttribute("listCollabo", list);
		req.getRequestDispatcher("/WEB-INF/views/collab/lister.jsp").forward(req, resp);
	}
}
