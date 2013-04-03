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

				<div id="content_netocentre" class="text">

						<img src="/esco-accueil/img/apprentissage.jpg" alt="Apprentissage">
                    <H3>
                        <FONT COLOR="#3F6AA5"><B>L’apprentissage, qu’est-ce que c’est ?</B></FONT>
                    </H3>
                    <br>
                    	<p>
	                    	Une formation complète à un métier qui comprend un enseignement complémentaire en Centre
	                    	de Formation d’Apprentis (CFA), et une formation pratique au sein d’une entreprise privée
	                    	ou publique. Un véritable tremplin pour décrocher un emploi.
                    	</p>
                    <br>
                    	<p>
	                    	En choisissant d’entrer en apprentissage vous allez acquérir une première expérience
	                    	professionnelle, mais aussi découvrir le monde de l’entreprise, signer un contrat
	                    	de travail pour une durée déterminée et toucher un salaire.
                    	</p>
                    <br>
                    	<p>
	                    	Quel que soit votre niveau scolaire, l’apprentissage vous donne accès à la préparation
	                    	de près de 300 diplômes professionnels ou technologiques du CAP au diplôme d’ingénieur (Bac +5).
	                    	Vous pouvez envisager une très grande diversité de métiers dans de nombreux secteurs
	                    	d’activité professionnels comme l’informatique, la conception multimédia, l’alimentation, l’hôtellerie,
	                    	le bâtiment, la coiffure, la comptabilité...
                    	</p>
                    <br>
                    	<p>
	                    	L’apprentissage est une voie ouverte à toutes et tous. La condition indispensable est d’avoir
	                    	entre 16 et 25 ans. Toutefois, il est possible d’obtenir une dérogation dans certaines situations.
	                    	Par exemple si vous avez 15 ans en fin de classe de troisième, vous pouvez obtenir une dispense de
	                    	scolarité obligatoire pour entrer en apprentissage. Ou encore si vous avez plus de 30 ans et un
	                    	projet de création ou de reprise d’entreprise, qui nécessite l’obtention du diplôme ou du titre, préparé.
                    	</p>
                   <BR> <BR>
					<H3>
						<FONT COLOR="#3F6AA5"><B>Comment s’organise la formation ?</B></FONT>
					</H3>
					<br>
                    	<p>
	                    	La formation alterne des périodes en CFA et des périodes en entreprise. Le rythme de cette alternance est
	                    	variable en fonction des niveaux de diplômes préparés (pour les CAP, le rythme est souvent de 1 semaine au CFA,
	                    	3 semaines en entreprise), et des CFA.
                    	</p>
                    <br>
                    	<p>
	                    	Votre employeur est le responsable de votre formation. Le maître d’apprentissage, ou tuteur professionnel,
	                    	peut être le chef d’entreprise ou un de ses salariés. Il est en relation avec le CFA qui assure le suivi de
	                    	votre parcours de formation. Sa mission est de vous transmettre le savoir-faire et les compétences
	                    	professionnelles nécessaires au métier et au diplôme que vous préparez.
                    	</p>
                    <br>
                    	<p>
	                    	Au CFA, les formateurs d’enseignement général et d’enseignement professionnel vous accompagnent vers l’obtention
	                    	du diplôme que vous préparez. Le CFA s’engage à dispenser une formation générale, technologique et pratique,
	                    	qui complète la formation reçue en entreprise et qui s’articule avec elle.
                    	</p>

				</div>

			</div>

		</div>

	</div>

</div>

<script type="text/javascript" src="/esco-accueil/js/esco-accueil-page-readmore.js"></script>
