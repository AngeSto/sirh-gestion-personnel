package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class NouveauCollaborateursController extends HttpServlet{
	private CollaborateurService collaboService = Constantes.COLLAB_SERVICE;
	private int CPT = 0;
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		req.getRequestDispatcher("/WEB-INF/views/collab/nouveau.jsp").forward(req, resp);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		if (req.getParameter("Nom")==null ||req.getParameter("Prenom")==null ||req.getParameter("DateNaissance")==null ||req.getParameter("Adresse")==null ||req.getParameter("NumeroSecu")==null){
			resp.setStatus(400);
			resp.getWriter().write("<h1>Un des champs n'est pas renseigné, tu as forcé mon JavaScript :-(</h1>");
		}else {
		Integer id = CPT++;
		List<Collaborateur> list = collaboService.listerCollabo();
		collaboService.sauvegarderCollabo(new Collaborateur(id ,req.getParameter("Nom"), req.getParameter("Prenom"), req.getParameter("Adresse"), req.getParameter("NumeroSecu"), LocalDate.parse(req.getParameter("DateNaissance"), DateTimeFormatter.ofPattern("yyyy-MM-dd"))));
		
		req.setAttribute("listCollabo", list);
		req.getRequestDispatcher("/WEB-INF/views/collab/lister.jsp").forward(req, resp);
		}
	}
}
