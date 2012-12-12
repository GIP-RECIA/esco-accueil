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

					<img src="/esco-accueil/img/academie.jpg"
						alt="Académie Orléans-Tours - Liberté - Égalité - Fraternité - République française">
					<H3>
						<FONT color="#3F6AA5"><B>Académie d'Orléans-Tours</B></FONT>
					</H3>
					<br>
					<p>Le développement des usages numériques est une volonté forte
						de Monsieur le Ministre de l'Education Nationale, qui s'inscrit de
						manière pérenne dans la mise en œuvre d'une politique numérique
						nationale initiée il y a près de dix ans. Récemment, des moyens
						ont été attribués aux établissements dans le cadre du plan
						Développement des Usages Numériques pour les Établissements
						scolaires et les écoles (DUNE).</p>
					<br>
					<p>Au niveau académique, Madame le Recteur a impulsé fortement,
						en relation avec ses partenaires des collectivités territoriales,
						la généralisation des Espaces Numériques de Travail ; ces derniers
						ayant pour finalité de simplifier et de fluidifier l'accès à
						l'ensemble des ressources et services numériques que crée ou
						exploite un établissement scolaire, et qui sont proposés à
						l'ensemble des acteurs de la communauté éducative (élèves,
						enseignants, parents, chefs d'établissements, partenaires,…).</p>
					<br>
					<P>Les outils présents dans les ENT ont également vocation à
						faciliter les apprentissages des élèves et à personnaliser leur
						parcours.</P>
				</div>

			</div>

		</div>

	</div>


</div>

<script type="text/javascript"
	src="/esco-accueil/js/esco-accueil-page-readmore.js"></script>
