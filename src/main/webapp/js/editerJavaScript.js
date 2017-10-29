var urlRoot = "";
function init(value) {
	urlRoot = value;
}

$(document).ready(function() {

	$("#btnSauvegarder").click(function(event) {
		event.preventDefault();

		var isValid = true;

		if ($("#textAreaAdresse").val()) {
			$("#textAreaAdresse").removeClass();
			$("#textAreaAdresse").addClass("form-control is-valid");
		} else {
			$("#textAreaAdresse").removeClass("form-control");
			$("#textAreaAdresse").addClass("form-control is-invalid");
		}

		isValid = isValid && $("#textAreaAdresse").val() != "";

		if (isValid) {

			document.forms[0].action = urlRoot + "collaborateurs/editer";
			document.forms[0].method = "POST";
			document.forms[0].submit();

		}

	})

});