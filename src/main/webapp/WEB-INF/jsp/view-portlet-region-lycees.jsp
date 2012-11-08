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

					<img src="/esco-accueil/img/region.jpg" title="Région Centre">
					<H3>
						<FONT COLOR="#548dd4"><B>La Région Centre</B></FONT>
				    </H3>
					<br>
					<p>La Région a la responsabilité des conditions matérielles
						offertes aux équipes éducatives et aux lycéens. Elle souhaite
						offrir les conditions les meilleures pour la réussite des lycéens
						à travers ses missions de construction, d'entretien et
						d'équipement des locaux mais aussi de restauration et
						d'hébergement des élèves et d'accompagnement des projets éducatifs
						mis en place par les établissements.</p>
					<br>
					<p>Dès 2002, la Région Centre a câblé l'ensemble des lycées
						suivant un schéma directeur approuvé par le Rectorat de l'académie
						d'Orléans-Tours et la Région Centre. A l'heure actuelle l'ensemble
						de ces équipements est supervisé par une plate forme de
						télégestion. L'accès au réseau internet se fait par
						l'intermédiaire d'un réseau très haut débit financé par le Conseil
						régional.</p>
					<br>
					<p>Dès lors, la Région Centre a lancé en collaboration avec le
						Rectorat et la DRAAF un certain nombre d'actions et de dispositifs
						cohérents visant à développer les usages TICE et utiliser les
						structures mises en place :</p>
					<br>
					<p>
						<FONT COLOR="#548dd4">2007</FONT> - lancement d'un service en
						ligne d'accompagnement scolaire gratuit proposé aux élèves et
						enseignants de plusieurs établissements volontaires, pour lequel
						il s'agit d'offrir aux élèves une nouvelle manière d'apprendre et
						de réviser sur Internet en combinant interactivité, efficacité et
						plaisir d'apprendre.
					</p>
					<p>
						<FONT COLOR="#548dd4">2008</FONT> - phase d'expérimentation dans
						le déploiement des Espaces Numériques de Travail dans tous les
						lycées publics de la région.
					</p>
					<p>
						<FONT COLOR="#548dd4">2010</FONT> - lancement d'une
						expérimentation unique au niveau national de manuels scolaires
						numériques depuis la rentrée scolaire 2010 dans 10 lycées de la
						région.
					</p>
					<p>
						<FONT COLOR="#548dd4">2011</FONT> - début du déploiement des
						Espaces Numériques de Travail Net O'Centre dans les Centres de
						Formation d'Apprentis.
					</p>
					<p>
						<FONT COLOR="#548dd4">2012</FONT> - dernière phase du plan de
						déploiement de la fibre optique dans les lycées publics. À la
						rentrée 2012, 95% des lycées bénéficiet d'une connexion au
						minimum à 10 méga.
					</p>

					<br>
					<p>
						Pour plus d'informations sur les dispositifs proposés par la
						Région Centre aux lycées, apprentis et étudiants, ne manquez pas
						de visiter <a target="_blank" href="http://www.jeunesOCentre.fr">www.jeunesOCentre.fr</a>
						ou <a target="_blank" href="http://www.regioncentre.fr">www.regioncentre.fr</a>
					</p>

				</div>

			</div>

		</div>

	</div>

</div>

<script type="text/javascript"
	src="/esco-accueil/js/esco-accueil-page-readmore.js"></script>
