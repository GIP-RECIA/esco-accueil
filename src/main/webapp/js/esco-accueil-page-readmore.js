( function($) {

	$(document).ready(function(){
		var st_img = $('#content_netocentre img');
		if (st_img.height() > 0) {
			doresize(st_img);
		} else {
			st_img.on({'load': function(){doresize(st_img);}});
		}

		$(window).resize(function(){
			doresize($('#content_netocentre img'));
			console.log("=== Windows RESIZING ! ===");
		});

		function doresize(img) {

			var old_width = img.width();
			var new_width = $('.portlet-section').width() * 0.20;
			var ratio = old_width / new_width;
			var new_height = img.height() / ratio;
			console.log("img_width : " + new_width);
			console.log("img_height : " + new_height);
			img.css('width', new_width);
			img.css('height', new_height);
			img.parent().css("min-height", new_height);
		}
	});
})(jQuery);