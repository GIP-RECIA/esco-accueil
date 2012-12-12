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

					<img src="/esco-accueil/img/netocentre.jpg" alt="NetO'Centre">
					<H3>
						<FONT COLOR="#3F6AA5"><B>Net O'Centre, qu'est-ce que
								c'est&nbsp;?</B></FONT>
					</H3>
					<br>
					<P>Le principe d'un Espace Numérique de Travail est de proposer
						à travers un site web sécurisé un point d'accès unique où
						l'enseignant, l'élève et l'ensemble des personnels de
						l'établissement, peuvent trouver les informations, outils et
						services numériques en rapport avec leurs activités éducatives.</P>
						<BR>
					<P>Une connexion internet, un clic et vous accédez ainsi en
						temps réel avec Net O'Centre à votre bureau virtuel, votre
						cartable électronique (cahier de texte, cours en ligne,
						messagerie, notes et absences, ressources numériques …)</P>
						<BR>
					<P>Les parents d'élève disposent également d'un compte dans
						l'ENT leur permettant notamment de pouvoir consulter des
						informations concernant la scolarité de leur enfant (gestion des
						notes, des absences …).</P>
						<BR>
					<P>A partir de la collaboration entre le Rectorat
						Orléans-Tours, la DRAAF (Direction Régionale de l'Alimentation de
						l'Agriculture et de la Forêt), le GIP RECIA (Région Centre
						Interactive) et la Région Centre, Net O'Centre est accessible
						depuis la rentrée scolaire 2012 dans l'ensemble des lycées publics
						de la région.</P>
						<BR>
					<P>Rentrez dans une nouvelle dimension avec Net O'Centre.</P>
					<BR> <BR>
					<H3>
						<FONT COLOR="#3F6AA5"><B>Quels sont les services et
								applications disponibles&nbsp;? </B></FONT>
					</H3>
					<BR>
					<P>Avec Net O'Centre vous pouvez, en fonction des choix et des
						abonnements souscrits par l'établissement et de votre profil,
						accéder sans ré identification à plus d'une 20ene de services,
						d'informations et d'applications dans les domaines suivants :</P>
					<BR>
					<UL>
						<LI><P>pédagogie&nbsp;: cours en ligne, espace de
								stockage personnalisé, aide aux devoirs,</P>
						<LI><P>communication&nbsp;: messagerie, annonces,</P>
						<LI><P>vie de l'établissement&nbsp;: gestion et
								réservation des ressources et équipements,</P>
						<LI><P>orientation&nbsp;: web classeur, Etoile, ONISEP,</P>
						<LI><P>vie scolaire&nbsp;: cahier de texte, services de
								gestion des notes et des absences,</P>
						<LI><P>ressources numériques&nbsp;: manuels scolaires
								numériques, abonnements à des ressources spécifiques&nbsp;: le
								site.Tv, les encyclopédies,...</P>
					</UL>
				</div>

			</div>

		</div>

	</div>

</div>

<script type="text/javascript"
	src="/esco-accueil/js/esco-accueil-page-readmore.js"></script>
