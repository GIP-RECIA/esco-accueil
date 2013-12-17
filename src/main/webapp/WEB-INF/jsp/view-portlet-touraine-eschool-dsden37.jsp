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

				<div id="content_netocentre" class="text clg37">

					<img src="/esco-accueil/img/dsden37.jpg" alt="Académie Orléans-Tours - Direction des Services Départementaux de l'Éducation Nationale Indre-et-Loire
								- Liberté - Égalité - Fraternité - République française">
					<H3>
						<FONT COLOR="#3F6AA5"><B>Le partenariat actif avec le Conseil
								général d’Indre-et-Loire permet aux collèges de s’inscrire
								encore plus dans l’ère du numérique : c’est un impératif
								pédagogique et un projet de société ambitieux.</B></FONT>
					</H3>
					<br>
					<br>
					<P>Dans une logique de réduction des disparités territoriales,
						la direction académique accompagne les équipes de chaque
						établissement dans le développement d’usages numériques au profit
						de la réussite de tous les élèves.</P>
					<br>
					<P>Touraine e-school permet aux élèves de disposer de chez eux
						de leur environnement numérique de travail, ainsi que de l’accès
						libre aux abonnements numériques conclus par les établissements
						avec des éditeurs.</P>
					<br>
					<P>L’individualisation de l’accompagnement permet un
						prolongement de la pédagogie différenciée. L’implication des
						familles dans le suivi de la scolarité de leur enfant se trouve
						renforcée par cet outil : des informations en temps réel et des
						outils de communication avec l’établissement sont mis à leur
						disposition.</P>
				</div>

			</div>

		</div>

	</div>

</div>

<script type="text/javascript"
	src="/esco-accueil/js/esco-accueil-page-readmore.js"></script>
