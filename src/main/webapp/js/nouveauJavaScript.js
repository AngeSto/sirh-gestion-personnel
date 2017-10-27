var urlRoot = "";
function init(value) {
	urlRoot = value;
}

$(document).ready(function() {

	$("#btnConfirmer").click(function(event) {
		document.forms[0].action = urlRoot + "collaborateurs/nouveau";
		document.forms[0].method = "POST";
		document.forms[0].submit();

	});

	$("#btnCreer").click(function(event) {
		event.preventDefault();

		var isValid = true;

		$('input, textarea').each(function(index, el) {

			var jqEl = $('#' + el.id);

			if (jqEl.val()) {
				jqEl.removeClass();
				jqEl.addClass("form-control is-valid");
			} else {
				jqEl.removeClass("form-control");
				jqEl.addClass("form-control is-invalid");
			}
			isValid = isValid && jqEl.val() != "";
		})

		if (isValid) {
			$("#modalNom").html($("#inputNom").val());
			$("#modalPrenom").html($("#inputPrenom").val());
			$("#modalDateNaissance").html($("#inputDateNaissance").val());
			$("#modalAdresse").html($("#textAreaAdresse").val());
			$("#modalNumeroSecu").html($("#inputNumeroSecu").val());

			$('#Modal').modal();
		}

	})

});