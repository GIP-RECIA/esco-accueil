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

					<img src="/esco-accueil/img/region.jpg"
						alt="Avec la Région Centre-Val de Loire y'a vraiment de quoi sourire !
							- toutes les informations sur www.jeunesocentre.fr
							- Lycéens, Apprentis, Étudiants :  Livres et ordinateurs gratuits, Aides aux transports et équipements professionnels,
							Voyages à l'étranger, Sorties à prix réduits
							- Région Centre-Val de Loire : Plus qu'une Région une chance pour l'éducation - www.regioncentre-valdeloire.fr">
					<H3>
						<FONT COLOR="#3F6AA5"><B>La Région Centre-Val de Loire</B></FONT>
				    </H3>
					<br>
					<p>La Région a la responsabilité des conditions matérielles
						offertes aux équipes éducatives et aux lycéens. Elle souhaite
						offrir les conditions les meilleures pour la réussite des lycéens,
						sans oublier celle des apprentis et des étudiants, à travers ses
						missions de construction, d'entretien et d'équipement des locaux
						mais aussi de restauration et d'hébergement des élèves et
						d'accompagnement des projets éducatifs mis en place par les
						établissements.</p>
					<br>
					<p>Dès 2002, la Région Centre-Val de Loire a câblé l'ensemble des lycées
						suivant un schéma directeur approuvé par le Rectorat de l'académie
						d'Orléans-Tours et la Région Centre-Val de Loire. À l'heure actuelle l'ensemble
						de ces équipements est supervisé par une plate forme de
						télégestion. L'accès au réseau internet se fait par
						l'intermédiaire d'un réseau très haut débit financé par le Conseil
						régional.</p>
					<br>
					<p>Dès lors, la Région Centre-Val de Loire a lancé en collaboration avec le
						Rectorat et la DRAAF (Direction Régionale de l'Alimentation de
						l'Agriculture et de la Forêt) un certain nombre d'actions et de
						dispositifs cohérents visant à développer les usages TICE et
						utiliser les services mis en place tels que :</p>
					<br>
					 <p style="margin-bottom: 0.3em !important;">
						- service en ligne d'accompagnement scolaire dans plusieurs établissements volontaires,
					</p>
					<p style="margin-bottom: 0.3em !important;">
						- Espaces Numériques de Travail Net O'Centre dans les lycées publics et les Centres de Formation d'Apprentis de la région Centre-Val de Loire,
					</p>
					<p style="margin-bottom: 0.3em !important;">
						- manuels scolaires numériques,
					</p>
					<p style="margin-bottom: 0.3em !important;">
						- déploiement de la fibre optique dans les lycées publics.
					</p>
					<br>
					<p>
						Pour plus d'informations sur les dispositifs proposés par la
						Région Centre-Val de Loire aux lycées, apprentis et étudiants, ne manquez pas
						de visiter <a target="_blank" href="http://www.jeunesOCentre.fr">www.jeunesOCentre.fr</a>
						ou <a target="_blank" href="http://www.regioncentre-valdeloire.fr">www.regioncentre-valdeloire.fr</a>
					</p>

				</div>

			</div>

		</div>

	</div>

</div>

<script type="text/javascript"
	src="/esco-accueil/js/esco-accueil-page-readmore.js"></script>
