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
</script>

<div class="esco-accueil">

	<div class="container">

		<div class="portlet-section">

			<div class="portlet-section-body">

				<div id="content_netocentre" class="text">

					<img src="/esco-accueil/img/agricole.jpg"
						title="Enseignement Agricole">
					<H3>
						<FONT color="#548dd4"><B>LES LYCÉES AGRICOLES … À L'ÈRE
								DU NUMERIQUE !</B></FONT>
					</H3>
					<br>
					<P>La Direction Régionale de l'Alimentation, de l'Agriculture et de
						la Forêt participe au projet de développement de l'Espace
						Numérique de Travail au sein des établissements d'Enseignement
						Agricole soutenu par le Conseil Régional.</P>
					<BR>
					<P>L'ENT répond à des enjeux importants pour la communauté
						éducative, apprenants - enseignants - personnels administratifs -
						parents, tant sur le plan du fonctionnement des établissements que
						sur le plan de l'acquisition et de l'apprentissage des
						connaissances par les apprenants.</P>
					<BR>
					<P>L'ENT est porteur de changements dans le mode de communication
						et d'information, dans la maîtrise par tous des nouvelles
						technologies, dans l'intégration des technologies de l'information
						et de la communication dans les enseignements,... Il contribuera
						au renforcement de l'accompagnement des apprenants dans leur
						parcours de formation.</P>
					<BR>
				</div>

			</div>

		</div>

	</div>

</div>

<script type="text/javascript"
	src="/esco-accueil/js/esco-accueil-page-readmore.js"></script>
