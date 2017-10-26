$(document).ready(function () {

    $("#btnSauvegarder").click(function (event) {
        event.preventDefault();

        var isValid = true;


        $('input, textarea, selected').each(function (index, el) {

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

            window.location.href="./lister.html"


        }



    })

});