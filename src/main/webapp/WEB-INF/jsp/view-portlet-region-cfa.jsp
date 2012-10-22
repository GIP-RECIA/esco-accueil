<%--

    Copyright (C) 2012 Esup Portail http://www.esup-portail.org
    Copyright (C) 2012 RECIA http://www.recia.fr
    @Author (C) 2012 Julien Gribonvald <julien.gribonvald@recia.fr>

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
            http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

--%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='portlet' uri="http://java.sun.com/portlet"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<portlet:defineObjects />

<c:set var="n">
	<portlet:namespace />
</c:set>

<!-- Framework CSS  GIP Recia  For a bug in Chrome, important to load css
    before javascript as some parts of JS Read the css files
    See http://api.jquery.com/ready/ for further explanation
    -->

<link rel="stylesheet" href="/esco-accueil/css/esco-accueil.css"
	type="text/css" media="screen, projection">

<script type="text/javascript"
	src="/esco-accueil/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript">
	var jQuery = $.noConflict(true);
	(function($) {

		$(document)
				.ready(
						function() {
							$('#content_netocentre img').load(function(e) {
								doresize($(this));
							});

							$(window).resize(function() {
								doresize($('#content_netocentre img'));
								console.log("=== Windows RESIZING ! ===");
							});

							function doresize(img) {

								var old_width = img.outerWidth();
								var new_width = $('.portlet-section')
										.outerWidth() * 0.38;
								var ratio = old_width / new_width;
								var new_height = img.outerHeight() / ratio;
								console.log("img_width : " + new_width);
								console.log("img_height : " + new_height);
								img.css('width', new_width);
								img.css('height', new_height);
								img.parent().css('width', new_width);
								img.parent().css('height', new_height);
								console.log($('.portlet-section').outerWidth());
								$('#content_netocentre .text').css(
										'width',
										$('.portlet-section').outerWidth()
												- new_width - 40);
								$('#content_netocentre .text').css(
										'margin-top', '10px');

							}
						});
	})(jQuery);
</script>

<div class="esco-accueil">

	<div class="container">

		<div class="portlet-section">

			<div class="portlet-section-body">

				<div id="content_netocentre">

					<div class="image">
						<img src="/esco-accueil/img/region.jpg" title="Région Centre">
					</div>
					<div class="text">
						<br>
						<p>
							Pour plus d’informations sur les dispositifs proposés par la
							Région Centre aux lycées, apprentis et étudiants, ne manquez pas
							de visiter <a href="http://www.jeunesOCentre.fr">www.jeunesOCentre.fr</a>
							ou <a href="http://www.regioncentre.fr">www.regioncentre.fr</a>
						</p>

					</div>
				</div>

			</div>

		</div>

	</div>


</div>