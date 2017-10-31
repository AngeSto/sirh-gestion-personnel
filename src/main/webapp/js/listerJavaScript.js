var urlRoot = "";
function init(value) {
	urlRoot = value;
}

function filter(value) {
	$(".collabo").hide();
	if (value == "Tous") {
	    $(".collabo").show();
	} else {
	  $(".departement").each(function(id,val){
	        if($(val).html() == value) {
	            $(val).parents('.collabo').show()
	        }
	    }); 
	}
}

function desactif(){
	if (document.getElementById("CheckDesactif").checked = true){
		if($("#Desactif").hasClass(true)){
			$("#collabo").hide();
		}
		
	} else {
			$("#collabo").show();
		
	}
	
	
}