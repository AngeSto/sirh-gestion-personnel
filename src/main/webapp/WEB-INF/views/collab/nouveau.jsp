<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<title>Nouveau</title>
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
<script src="<%=request.getContextPath()%>/js/nouveauJavaScript.js" charset="UTF-8"></script>
<script type="text/javascript">
	var urlRoot ="<%=request.getContextPath()%>/";
	init(urlRoot);
</script>
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

	<header>
		<h1>Nouveau Collaborateur</h1>
	</header>
	<form accept-charset="UTF-8">
		<div class="form-group row">
			<label for="inputNom" class="col-2 col-form-label offset-1">Nom</label>
			<div class="col-5">
				<input type="text" name="Nom" class="form-control" id="inputNom"
					placeholder="Nom" required>
				<div class="invalid-feedback">Le nom est obligatoire</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="inputPrenom" class="col-2 col-form-label offset-1">Prénom</label>
			<div class="col-5">
				<input type="text" name="Prenom" class="form-control" id="inputPrenom"
					placeholder="Prénom" required>
				<div class="invalid-feedback">Le prénom est obligatoire</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="inputDateNaissance" class="col-2 col-form-label offset-1">Date
				de Naissance</label>
			<div class="col-5">
				<input type="Date" name="DateNaissance" class="form-control" id="inputDateNaissance"
					placeholder="Date de Naissance" required>
				<div class="invalid-feedback">La date de naissance est
					obligatoire</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="textAreaAdresse" class="col-2 col-form-label offset-1">Adresse</label>
			<div class="col-5">
				<textarea class="form-control" name="Adresse" id="textAreaAdresse" rows="3"
					placeholder="Adresse" required></textarea>
				<div class="invalid-feedback">L'adresse est obligatoire</div>
			</div>
		</div>
		<div class="form-group row">
			<label for="inputNumeroSecu" class="col-2 col-form-label offset-1">Numéro
				de Sécurité Sociale</label>
			<div class="col-5">
				<input type="number" name="NumeroSecu" class="form-control" id="inputNumeroSecu"
					placeholder="Numéro de Sécurité Sociale" required>
				<div class="invalid-feedback">Le numéro de sécurité sociale
					est obligatoire</div>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-3 offset-7">
				<button type="button" class="btn btn-primary col-3" id="btnCreer">Créer</button>
			</div>
		</div>
	</form>
	<div class="modal fade" id="Modal" tabindex="-1" role="dialog"
		aria-labelledby="ModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="ModalLabel">Création d'un
						collaborateur</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body container">
					<p>Vous êtes sur le point de créer un nouveau collaborateur :</p>


					<div class="row">
						<p class="col-5">Nom</p>
						<label id="modalNom"></label>
					</div>
					<div class="row">
						<p class="col-5">Prénom</p>
						<label id="modalPrenom"></label>
					</div>
					<div class="row">
						<p class="col-5">Date de naissance</p>
						<label id="modalDateNaissance"></label>
					</div>
					<div class="row">
						<p class="col-5">Adresse</p>
						<label id="modalAdresse"></label>
					</div>
					<div class="row">
						<p class="col-5">Numéro de sécurité sociale</p>
						<label id="modalNumeroSecu"></label>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Annuler</button>
					<button type="button" class="btn btn-primary" id="btnConfirmer">Confirmer</button>
				</div>
			</div>
		</div>
	</div>

</body>

</html>