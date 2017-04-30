$(document).on('turbolinks:load', function(){
	$(".pop-up").on("click", function(event) {
		event.preventDefault();
		var id = $(this)[0].firstElementChild.id;
 		$('#imagepreview').attr('src', $('#' + id).attr('src'));
		$('#imagemodal').modal('show');
	});
});
