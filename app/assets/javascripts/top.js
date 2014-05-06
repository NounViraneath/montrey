jQuery(document).ready(function($){
	var msg = document.getElementById('noty_notice_msg');
	if(msg.value){
		show_noty('success', msg.value, 'topCenter');
		show_noty('success', 'Welcome to the MontreyTrain.', 'topCenter');
	}
	
	// datatables
	$('.tab_content').show();
	$('.tab_content').find('.details').hide();
	$('.tab_table').dataTable( {
        "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
  		"sPaginationType": "bootstrap"
    } );
    
    // datatable row click event
    $("#course").on("click", "tbody tr", function(e){
    	var row = $(this).closest("tr");
    	var details = $('.course_detail');
    	details.show();
    	var content = details.find('.content');
    	var html = "<h2>"+row.find('.name').text()+"</h2>";
    	html += "blahblah blah... Need Default Template";
    	content.html(html);
    	details.animate({
    		height: '400px'
    	});
    });
    
    $("#member").on("click", "tbody tr", function(e){
    	var row = $(this).closest("tr");
    	var details = $('.member_detail');
    	details.show();
    	var content = details.find('.content');
    	var html = "<h2>"+row.find('.name').text()+"</h2>";
    	html += "blahblah blah... Need Default Template";
    	content.html(html);
    	details.animate({
    		height: '400px'
    	});
    });
    
    // remove img
    $(".remove_img").click(function(){
    	var details = $('.detail');
    	details.hide();
    	details.animate({
    		height: '0px'
    	});
    });
    
    // edit img
    $(".edit_img").click(function(){
    	var details = $('.mypage_detail');
    	details.show();
    	details.animate({
    		height: '400px'
    	});
    });
});
