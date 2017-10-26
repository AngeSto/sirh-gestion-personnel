package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateursController extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String matricule = req.getParameter("matricule");
		String titre = req.getParameter("titre");
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		StringBuilder sB = new StringBuilder();
		if (matricule == null || titre == null || nom == null || prenom == null) {
			resp.setStatus(400);
			sB.append("Le attribut suivant ne sont pas renseigné :");
			if (matricule == null){
				sB.append("\n le matricule");
			}
			if (titre == null){
				sB.append("\n le titre");
			}
			if (nom == null){
				sB.append("\n le nom");
			}
			if (prenom == null){
				sB.append("\n le prénom");
			}
		} else {
			resp.setStatus(200);
			resp.getWriter().write("<h1>Edition de collaborateur</h1>");
			sB.append("matricule="+matricule+", titre="+titre+", nom="+nom+", prenom="+prenom);
		}
		resp.getWriter().write("<p>"+sB.toString()+"</p>");
	}
}
