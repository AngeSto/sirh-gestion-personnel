package dev.sgp.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.model.Collaborateurs;

public class ListerCollaborateursController extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Collaborateurs> list = new ArrayList<>();
		list.add(new Collaborateurs("Stoïanov", "Ange", "Développeur", "Informatique", "emailAnge@hotmail.fr", "06 96 30 98 18"));
		list.add(new Collaborateurs("Feuillerat", "Paloma", "Femme au foyer", "Maison", "emailPaloma@yahoo.com", "07 52 87 96 87"));
		list.add(new Collaborateurs("Stoïanov", "Ange", "Développeur", "Informatique", "emailAnge@hotmail.fr", "06 96 30 98 18"));
		list.add(new Collaborateurs("Feuillerat", "Paloma", "Femme au foyer", "Maison", "emailPaloma@yahoo.com", "07 52 87 96 87"));
		req.setAttribute("listCollabo", list);
		req.getRequestDispatcher("/WEB-INF/views/collab/lister.jsp").forward(req, resp);
		
	}
}
