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

					<img src="/esco-accueil/img/cg37.jpg" alt="Collège : le Conseil général d'Indre-et-Loire crée les conditions de la réussite">
					<H3>
						<FONT COLOR="#3F6AA5"><B>Collège : le Conseil général d’Indre-et-Loire crée les conditions de la réussite</B></FONT>
					</H3>
					<br>
					<p>Les 22 000 élèves scolarisés dans les 55 collèges du département peuvent compter sur le Conseil général.</p>
					<br>
					<P>La collectivité met tout en œuvre pour que chacun des collégiens
						bénéficie des conditions d’étude optimales. C’est l’assurance de
						réussir ses « années collège ».</P>
					<br>
					<P>Investir pour l’avenir des jeunes, c’est leur permettre
						d’évoluer dans des locaux adaptés aux apprentissages et agréables.
						D’importants travaux de construction, de réhabilitation ou de
						maintenance maintiennent en permanence le niveau de confort
						requis.</P>
					<br>
					<P>La vie au collège doit également être synonyme d’égalité des
						chances. L’informatisation des établissements engagée depuis
						quelques années a permis d’harmoniser le parc d’ordinateurs,
						d’imprimantes, de vidéoprojecteurs… d’accéder aux espaces
						numériques de travail (ENT), de tester les tablettes numériques,
						etc. Le soutien aux activités culturelles et sportives (UNSS),
						l’implication dans la vie de son établissement (Atout collégien
						37), le bénéfice de pauses méridiennes de qualité (demi-pensions
						modernisées, coût abordable et repas équilibrés…) participent
						également à l’épanouissement des élèves.</P>
					<br>
					<P>Enfin, le Département transporte quotidiennement 16 000
						élèves par cars en plafonnant le coût des abonnements (130 €/an) –
						si on évoque le coût de l’abonnement, ne doit-on pas préciser le %
						pris en charge par la Collectivité ?. Il est aussi présent dès
						qu’un déplacement s’impose, par exemple vers les équipements
						sportifs. Il assure également la sécurisation des points d’arrêts
						des autocars dans l’ensemble de l’Indre-et-Loire.</P>
				</div>

			</div>

		</div>

	</div>

</div>

<script type="text/javascript"
	src="/esco-accueil/js/esco-accueil-page-readmore.js"></script>
