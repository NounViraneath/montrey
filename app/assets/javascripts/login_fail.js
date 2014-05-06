jQuery(document).ready(function($){
	
	var msg = document.getElementById('noty_alert_msg');
	if(msg.value){
		show_noty('error', msg.value, 'topRight');
	}
	
	$(".btn").click(function(){
		$('#login-indicator').show();
		$('.form-signin').fadeOut(500);
	});
});
