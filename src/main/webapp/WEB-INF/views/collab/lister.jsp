<%@ page import="java.util.List"%>
<%@ page import="dev.sgp.entite.Collaborateur"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html>

<head>
<meta charset="UTF-8">
<title>SGP-App</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
	integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
	integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
	crossorigin="anonymous"></script>
</head>

<body class="container-fluid">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="http://www.dta-ingenierie.fr/"> <img
			class="d-flex align-self-center mr-3" height="50"
			src="https://i0.wp.com/diginamic.fr/wp-content/uploads/2016/04/logo-DTA.png"
			alt="logo">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="./lister.html">Collaborateur
					<span class="sr-only">(current)</span>
				</a> <a class="nav-item nav-link" href="./statistiques.html">Statistiques</a>
				<a class="nav-item nav-link" href="./activites.html">Activités</a>
			</div>
		</div>
	</nav>
	<div class="offset-10">
		<a class="btn btn-primary" href="./nouveau" role="button">Ajouter
			un nouveau collaborateur</a>
	</div>
	<header>
		<h1>Les collaborateurs</h1>
	</header>
	<form>
		<div class="form-row align-items-center">
			<div class="col-3">
				<label class="col-form-label" for="consigne">Rechercher un
					nom ou un prénom qui commence par :</label>
			</div>
			<div class="col-2">
				<label class="sr-only" for="recherche">Recherche</label>
				<div class="input-group mb-2 mb-md-0">
					<input type="text" class="form-control" id="recherche"
						placeholder="Recherche">
				</div>
			</div>
			<div class="col-4">
				<button type="submit" class="btn btn-primary col-4">Recherche</button>
			</div>
			<div class="col-3">
				<div class="form-check mb-2 mb-md-0">
					<label class="form-check-label"> <input
						class="form-check-input" type="checkbox"> Voir les
						collaborateurs désactivés
					</label>
				</div>
			</div>
		</div>
		<div class="form-row align-items-center">
			<div class="col-3">
				<label class="col-form-label" for="filtrer">Filtrer par
					departement :</label>
			</div>
			<div class="col-2">
				<select class="custom-select mb-3 col-2 mb-md-0" id="filtrer">
					<option selected>Tous</option>
					<option value="1">Comptabilité</option>
					<option value="2">Ressources Humaines</option>
					<option value="3">Informatique</option>
				</select>
			</div>
		</div>
	</form>
	<section class="container-fluid">
		<%
			List<Collaborateur> listCollabo = (List<Collaborateur>) request.getAttribute("listCollabo");
			int cpt = 0;
			for (Collaborateur collabo : listCollabo) {
				if (cpt % 3 == 0 || cpt == 0) {
		%>
		<div class="row">
			<%
				}
			%>
			<div class="col-4">
				<div class="card">
					<div class="card-header"><%=collabo.getNom() + " "%><%=collabo.getPrenom()%></div>
					<div class="card-block">
						<div class="media">
							<img class="d-flex align-self-center mr-3" height="100"
								src="<%=collabo.getPhoto() %>"
								alt="Generic placeholder image">
							<div class="media-body">
								<div class="row">
									<p class="col-5 font-weight-bold">Fonction</p>
									<p class="col=7"><%=collabo.getIntitulePoste()%></p>
								</div>
								<div class="row">
									<p class="col-5 font-weight-bold">Departement</p>
									<p class="col=7"><%=collabo.getDepartement()%></p>
								</div>
								<div class="row">
									<p class="col-5 font-weight-bold">Email</p>
									<p class="col=7"><%=collabo.getEmail()%></p>
								</div>
								<div class="row ">
									<p class="col-5 font-weight-bold">Téléphone</p>
									<p class="col=7"><%=collabo.getTelephone()%></p>
								</div>
								<div class="row">
									<a href="./editer?matricule=<%=collabo.getMatricule()%>" class="btn btn-primary offset-7 col-4">Editer</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%
				cpt++;
					if (cpt % 3 == 0) {
			%>
		</div>
		<%
			}
			}
		%>
	</section>
</body>

</html>