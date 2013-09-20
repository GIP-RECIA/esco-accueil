/*
 * Copyright (C) 2012 Esup Portail http://www.esup-portail.org
 * Copyright (C) 2012 RECIA http://www.recia.fr
 * @Author (C) 2012 Julien Gribonvald <julien.gribonvald@recia.fr>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *         http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
( function($) {

	"use strict";

	var slider_img;
	var totalWidth;
	var totalHeight;
	var nav_img;
	var min_width = 320;
	var nb_img_loaded = 0;
	var stopSlider = false;
	//IE does not define this by default
	if ("undefined" === typeof window.console)
	{
	      window.console = {
	          "log": function() { }
	      };
	}

	//Another IE fix, prevents IE from cacheing ajax calls
	$.ajaxSetup({
	    cache: false
	});

	$(document).ready(function(){
		$('#nojs').css('display', 'none');
		var CLG37 = false;
		if ($('#text_CLG37').length >0 ){
			$('#text_CLG37').css('display', 'block');
			$('#img_CLG37').css('display', 'block');
			CLG37 = true;
		} else {
			launchSlider();
		}
		isTpcAllowed(function(allowed) {
			console.log("cookies and third-party cookies allowed :" + allowed);
			if (navigator.cookieEnabled === false || allowed === false) {
				if (!CLG37) {
					$('#slider').css('display', 'none');
					$('#navigation').css('display', 'none');
				} else {
					$('#text_CLG37').css('display', 'none');
					$('#img_CLG37').css('display', 'none');
				}
				$('#nocookies').css('display', 'block');
				stopSlider = true;
			} else if (stopSlider === true) {
				stopSlider = false;
			}
		});
	});

	// main function for slider, must be launched when document is ready.
	function launchSlider() {
		$('#slider').css('display', 'block');
		$('#navigation').css('display', 'block');
		$('#slider img').css("position", "absolute");
		$('#slider img:gt(0)').hide();
		$('#navigation li:first').addClass('current-navigation');

		$('#content').parent().append('<div class=\"esco-accueil boutons\"><p><a class=\"prev\" href=\"#\">Précédent</a>  <a class=\"next\" href=\"#\">Suivant</a></p></div>');
		imgonload();
		$(window).resize(function(){
			doresize();
		});
		setInterval(auto, 5000);
	}

	function mouseenter(){
		$('#navigation').find('li').mouseenter(function(e) {
			e.preventDefault();
			// on désactive la navigation auto
			//console.log("Désactivation de la navigation auto");
			$('a.next').off('click');
			if (!$(this).hasClass('current-navigation')){
				//console.log("not hasClass !");
				var pos_suivant = $(this).index();
				$('.current-navigation').removeClass('current-navigation');
				$(this).addClass('current-navigation');
				//console.log(($(this).height()-$(this).find('img').height())/2+"px");
				var image_courante = $('#slider').find('img:visible').css('height',slider_img.height()).css('width',slider_img.width());
				var image_suivante = $('#slider').find('li').eq(pos_suivant).children('img').css('height',slider_img.height()).css('width',slider_img.width());

				// Animation
				image_suivante.stop(true,true).fadeIn();
				image_courante.stop(true,true).fadeOut();
			}
		});
	}

	function mouseleave(){
		$('#navigation').mouseleave(function(e) {
			e.preventDefault();
			// on réactive la navigation auto
			clicknext();
			//console.log("Réactivation de la navigation auto");
		});
	}

	function imgonload(){
		var nb_img = $('#content img').length;
		var doAllLoaded = function() {
			if (nb_img_loaded == nb_img) {
				slider_img = $('#slider img:first');
				nav_img = $('#navigation img:first');
				totalWidth = slider_img.width()+nav_img.width()+$('.meta').width();
				totalHeight = slider_img.height();
				//console.log("set totalWidth : " + totalWidth);
				//console.log("set totalHeight : " + totalHeight);
				doresize();

				mouseenter();
				mouseleave();
				clicknext();
				clickprev();
			}
		};

		$('#content img').each(function() {
			if ($(this).height() > 0) {
				nb_img_loaded++;
				//console.log("image already loaded");
				doAllLoaded();
			} else {
				$(this).on({
					'load' : function() {
						nb_img_loaded++;
						console.log("number of pictures loaded = " + nb_img_loaded + "/" + nb_img);
						doAllLoaded();
					},
					'error' : function() {
						nb_img_loaded++;
						console.log("pictures in error, number of pictures loaded = " + nb_img_loaded + "/" + nb_img);
						doAllLoaded();
					}
				});
			}
		});
	}

	function doresize(){
		if (stopSlider === true) return;
		if (nb_img_loaded == $('#content img').length){
			var nav_width;
			var resizeWidth = totalWidth;
			if ((resizeWidth + 50) > $(window).width()) {
				$('#slider').css('display', 'none');
				nav_width = (($(window).width()*2)/3);
				if (nav_width < min_width) nav_width=min_width;
				resizeWidth = nav_width;
			} else {
				$('#slider').css('display', 'block');
				nav_width = totalWidth-slider_img.width();
			}
			$('#content').css('height',totalHeight+'px');
			$('#content').css('width',resizeWidth+'px');
			$('#slider').css('width',slider_img.width());
			$('#navigation').css('width', nav_width+'px');
			$('#navigation').css('height',totalHeight+'px');

			// on a besoin de connaître la hauteur de chaque li par rapport à la hauteur max
			// puis pour chaque li on ajuste les éléments le composant
			var list_li = $('#navigation').find('li');
			var li_height = totalHeight / 4;
			//console.log("set li_height : " + li_height);

			var img_width;
			var img_height;
			var remain_width;

			list_li.each(function(){
				$(this).css('height', li_height + 'px');
				$(this).css('width', nav_width + 'px');
				// on traite l'image
				var img = $(this).find('img');
				// si premier passage on génère une taille fixe initialisée en fct de la première image
				if (typeof img_width == 'undefined'){
					img_width = img.width();
					img_height = img.height();
					remain_width = nav_width-img_width;
					//console.log("set img_width : " + img_width);
					//console.log("set img_height : " + img_height);
					//console.log("set remain width : " + remain_width);
				}
				img.css('margin-top',(li_height-img_height)/2+"px");
				img.css('width', img_width);
				img.css('height', img_height);
				img.closest('li').css('background-position', img_width + 1 + "px");
				//console.log("get img width : " + img_width);

				// on traite le div
				var meta = $(this).find('.meta');
				meta.css('margin-top',(li_height-meta.height())/2+"px");
				//console.log("get remain_width : " + remain_width);
				var new_width = remain_width - 20
				console.log("get new_remain_width : " +new_width);
				meta.css('width', new_width  +"px");
			});
		}
	}

	function clicknext(){
		$('.boutons').find('a.next').click(function(e) {
			e.preventDefault();
			// Preparation elt
			var li_courant = $('.current-navigation');
			var parent = li_courant.closest('ul');
			var li_suivant = li_courant.next('li');
			// Vérif
			if (li_suivant.length < 1){
				li_suivant = parent.find('li:first');
			}
			li_courant.removeClass('current-navigation');
			li_suivant.addClass('current-navigation');

			var image_courante = $('#slider').find('img:visible').css('height',slider_img.height()).css('width',slider_img.width());
			var image_suivante = $('#slider').find('li').eq(li_suivant.index()).children('img').css('height',slider_img.height()).css('width',slider_img.width());

			// Animation
			image_courante.stop(true,true).fadeOut();
			image_suivante.stop(true,true).fadeIn();
		});
	}

	function clickprev(){
		$('.boutons').find('a.prev').click(function(e) {
			e.preventDefault();
			// Preparation elt
			var li_courant = $('.current-navigation');
			var parent = li_courant.closest('ul');
			var li_precedent = li_courant.prev('li');
			// Vérif
			if (li_precedent.length < 1){
				li_precedent = parent.find('li:last');
			}
			li_courant.removeClass('current-navigation');
			li_precedent.addClass('current-navigation');

			var image_courante = $('#slider').find('img:visible').css('height',slider_img.height()).css('width',slider_img.width());
			var image_precedente = $('#slider').find('li').eq(li_precedent.index()).children('img').css('height',slider_img.height()).css('width',slider_img.width());

			// Animation
			image_courante.stop(true,true).fadeOut();
			image_precedente.stop(true,true).fadeIn();
		});
	}

	function auto(){
		if (stopSlider === true) return;
		$('a.next').trigger("click");
	}

	// function to test if third-party cookies are autorized by the user's web browser
	(function( window, undefined ) {

		var isTpcAllowed = function( callback ) {

		    callback = typeof callback === 'function' ? callback : $.noop;

		    var currentdomain = window.location.hostname;
		    var url = window.location.protocol +'//www.touraine-eschool.fr/esco-apps-redirector/';
		    if (currentdomain.substring(currentdomain.indexOf('.')) != ".netocentre.fr" ) {
		        url = window.location.protocol + '//lycees.netocentre.fr/esco-apps-redirector/';
		    }
		    var phpSet = 'tpcallowed_set.php',
		        phpGet = 'tpcallowed_get.php';

		    $.ajax({
		        url         : url + phpSet,
		        dataType    : 'jsonp',
		        success     : function( json ) {
		            var name = json.name || null;
		            if ( name ) {
		                $.ajax({
		                    url         : url + phpGet,
		                    type        : 'post',
		                    dataType    : 'jsonp',
		                    data        : 'cookieName=' + name,
		                    success     : function( json ) {
		                        var allowed = json.allowed || null;
		                        if ( allowed ) {
		                            allowed = allowed === 'true' ? true : false;
		                        }
		                        callback.call(window, allowed);
		                    },
		                    error       : function() {
		                        callback.call(window, null);
		                    }
		                });
		            } else {
		                callback.call(window, null);
		            }
		        },
		        error       : function() {
		            callback.call(window, null);
		        }
		    });
		};

		window.isTpcAllowed = isTpcAllowed;
	})(window);

})(jQuery);
