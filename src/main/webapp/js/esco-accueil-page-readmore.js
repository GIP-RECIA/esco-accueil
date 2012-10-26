( function($) {

	$(document).ready(function(){
		$('#content_netocentre img').load(function(e){
			doresize($(this));
		});

		$(window).resize(function(){
			doresize($('#content_netocentre img'));
			console.log("=== Windows RESIZING ! ===");
		});

		function doresize(img) {

			var old_width = img.outerWidth();
			var new_width = $('.portlet-section').outerWidth() * 0.20;
			var ratio = old_width / new_width;
			var new_height = img.outerHeight() / ratio;
			console.log("img_width : " + new_width);
			console.log("img_height : " + new_height);
			img.css('width', new_width);
			img.css('height', new_height);
		}
	});
})(jQuery);