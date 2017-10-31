<%@page import="dev.sgp.util.Constantes"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@page import="dev.sgp.entite.Departement"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<title>Editer</title>
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
<script src="<%=request.getContextPath()%>/js/editerJavaScript.js"></script>
<script type="text/javascript">
	var urlRoot ="<%=request.getContextPath()%>/";
	init(urlRoot);
</script>
</head>

<body class="container-fluid">
	<%Collaborateur collabo = (Collaborateur) request.getAttribute("Collabo");%>
	<form>
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
	<header class="row">
		<h1 class="offset-4 col-4"><%=collabo.getNom()%>
			<%=collabo.getPrenom()%> - Matricule <%=collabo.getMatricule()%></h1>
			<input type="hidden"  name="Matricule" value="<%=collabo.getMatricule()%>">
		<div class="col-3">
			<div class="form-check mb-2 mb-md-0">
				<label class="form-check-label"><input name="Desactif" class="form-check-input" type="checkbox"<%if(!collabo.isActif()){%>checked<%} %>> Désactivé </label>
			</div>
		</div>
	</header>

	<section class="row">
		<div class="col-4">
			<img src="<%=collabo.getPhoto()%>" alt="photo" class="img-thumbnail">
		</div>
		<div class="col-6">
			<div id="accordion" role="tablist" aria-multiselectable="true">
				<div class="card">
					<div class="card-header" role="tab" id="headingOne">
						<h5 class="mb-0">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapseOne" aria-expanded="true"
								aria-controls="collapseOne"> Identité </a>
						</h5>
					</div>

					<div id="collapseOne" class="collapse show" role="tabpanel"
						aria-labelledby="headingOne">
						<div class="card-block">
							
								<div class="form-group row">
									<label for="inputCivilite"
										class="col-3 col-form-label text-right">Civilité</label>
									<div class="col-5">
										<select class="custom-select mb-3 col-5 mb-md-0"
											id="selectCivilite" required>
											<option selected>Veuillez choisir</option>
											<option value="Monsieur">Monsieur</option>
											<option value="Madame">Madame</option>
											<option value="Mademoiselle">Mademoiselle</option>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label for="inputNom" class="col-3 col-form-label text-right">Nom</label>
									<div class="col-5">
										<input type="text" class="form-control" id="inputNom"
											value="<%=collabo.getNom()%>" placeholder="Nom"
											disabled="disabled">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPrenom"
										class="col-3 col-form-label text-right">Prénom</label>
									<div class="col-5">
										<input type="text" class="form-control" id="inputPrenom"
											value="<%=collabo.getPrenom()%>" placeholder="Prénom"
											disabled="disabled">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputDateNaissance"
										class="col-3 col-form-label text-right">Date de
										Naissance</label>
									<div class="col-5">
										<input type="Date" class="form-control"
											id="inputDateNaissance"
											value="<%=collabo.getDateNaissance()%>"
											placeholder="Date de Naissance" disabled="disabled">
									</div>
								</div>
								<div class="form-group row">
									<label for="textAreaAdresse"
										class="col-3 col-form-label text-right">Adresse</label>
									<div class="col-5">
										<textarea class="form-control" name="Adresse" id="textAreaAdresse" rows="3"
											placeholder="Adresse" required><%=collabo.getAdresse()%></textarea>
										<div class="invalid-feedback">L'adresse est obligatoire</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="inputNumeroSecu"
										class="col-3 col-form-label text-right">Numéro de
										Sécurité Sociale</label>
									<div class="col-5">
										<input type="number" class="form-control" id="inputNumeroSecu"
											value="<%=collabo.getNumeroSecu()%>"
											placeholder="Numéro de Sécurité Sociale" disabled="disabled">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputTelephone"
										class="col-3 col-form-label text-right">Téléphone</label>
									<div class="col-5">
										<input type="tel" name="Telephone" class="form-control" id="inputTelephone"
											value="<%=collabo.getTelephone()%>"
											placeholder="Numéro de téléphone">
									</div>
								</div>
							
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" role="tab" id="headingTwo">
						<h5 class="mb-0">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordion" href="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo"> Poste </a>
						</h5>
					</div>
					<div id="collapseTwo" class="collapse" role="tabpanel"
						aria-labelledby="headingTwo">
						<div class="card-block">
							
								<div class="form-group row">
									<label for="inputDepartement"
										class="col-3 col-form-label text-right">Departement</label>
									<div class="col-5">
										<select class="custom-select mb-3 col-5 mb-md-0" name="Departement"
											id="selectDepartement">
											<option selected>Veuillez choisir</option>
											<% List <Departement> listDepart = (List <Departement>)request.getAttribute("listDepart");
											for (Departement departement : listDepart){
												if (departement.equals(collabo.getDepartement())){%>
											<option selected value="<%=departement.getNom()%>"><%=departement.getNom()%></option>
											<%} else {%><option value="<%=departement.getNom()%>"><%=departement.getNom()%></option>
											<%}
											}%>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label for="inputNomPoste"
										class="col-3 col-form-label text-right">Nom</label>
									<div class="col-5">
										<input type="text" name="Poste" class="form-control" id="inputNomPoste"
											value="<%=collabo.getIntitulePoste()%>" placeholder="Poste">
									</div>
								</div>
							
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" role="tab" id="headingThree">
						<h5 class="mb-0">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordion" href="#collapseThree"
								aria-expanded="false" aria-controls="collapseThree">
								Coordonnées Bancaires </a>
						</h5>
					</div>
					<div id="collapseThree" class="collapse" role="tabpanel"
						aria-labelledby="headingThree">
						<div class="card-block">
							
								<div class="form-group row">
									<label for="inputIban" class="col-3 col-form-label text-right">IBAN</label>
									<div class="col-5">
										<input type="text" name="IBAN" class="form-control" id="inputIban"
											value="<%=collabo.getIban()%>" placeholder="IBAN">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputBic" class="col-3 col-form-label text-right">BIC</label>
									<div class="col-5">
										<input type="text" name="BIC" class="form-control" id="inputBic"
											value="<%=collabo.getBic()%>" placeholder="BIC">
									</div>
								</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="row">
		<div class="offset-9">
			<input type="button" class="btn btn-primary" id="btnSauvegarder"
				value="Sauvegarder">
		</div>
	</section>
	</form>
</body>

</html>