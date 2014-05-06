jQuery(document).ready(function($){
	
	var error_explanation = $('#error_explanation').find('li');
	for(var i=0 ; i<error_explanation.length ; ++i){
		show_noty('error', error_explanation[i].outerText, 'topRight');
	}
});
