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
					<P>L'ENT Régional - Espace Numérique de Travail - NET O'CENTRE -
						impulsé par le Conseil Régional et développé par le GIP RECIA est
						mis en place depuis 2009 au Lycée Agricole de Vendôme.</P>
					<BR>
					<P>À partir d'un ordinateur connecté à Internet et à l'aide
						d'un identifiant et d'un mot de passe, les enseignants et les
						apprenants et leurs parents accèdent à des services, des
						informations et des ressources qui les concernent.</P>
					<BR>
					<P>
						Près de 90% des <B>élèves</B> consultent le cahier de texte
						numérique, les annonces et surtout leur relevé de notes. Ils
						peuvent accéder à leur espace de stockage ainsi qu'à des
						ressources et manuels numériques.
					</P>
					<P>Les élèves ont tous une adresse mail et peuvent ainsi
						communiquer en interne.</P>
					<BR>
					<P>
						Du côté<I><B> des enseignants</B></I>, l'ENT a
						permis l'usage d'une application de gestion des notes et des
						appréciations. Les enseignants peuvent envoyer des messages aux
						élèves et transmettre des informations et des documents
						numériques.
					</P>
					<BR>
					<P>
						Les <I><B>parents </B></I>peuvent suivre à distance la scolarité
						de leur enfant (notes, appréciations, devoirs…).
					</P>
					<p>La connexion à l'ENT leur permet de consulter des
						informations telles que les événements du lycée, les dates de
						conseils de classe et leur compte-rendu, le menu du self, etc...</p>
					<BR>
					<P>L'ENT est actuellement opérationnel au lycée de Vendôme.</P>
					<P>Depuis septembre 2011, il est en cours de déploiement dans
						les autres lycées agricoles publics de la région. Les
						établissements, avec l'appui d'EDUTER d'AgroSup Dijon mettent
						actuellement en conformité les bases de données, opération
						préalable à la mise en production de l'ENT.</P>
					<BR>
					<P>La réflexion pour le déploiement de l'ENT dans les CFA est
						initiée.</P>
				</div>

			</div>

		</div>

	</div>

</div>

<script type="text/javascript"
	src="/esco-accueil/js/esco-accueil-page-readmore.js"></script>
