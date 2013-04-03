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

						<img src="/esco-accueil/img/region.jpg" alt="Région Centre">
                    <H3>
                        <FONT COLOR="#3F6AA5"><B>La Région Centre</B></FONT>
                    </H3>
                    <br>
                    	<p>
	                    	Depuis la loi de décentralisation de 1983, il appartient à la Région de créer les CFA et les sections d’apprentissage,
	                    	d’ouvrir les formations par apprentissage appropriées au sein de ces structures et d’accompagner financièrement le
	                    	développement de l’apprentissage. L’État (Rectorat, DRAAF, DRJSCS, DIRRECTE) pour sa part conserve la
	                    	compétence du contrôle pédagogique, de l’organisation des examens et de la vérification des contrats de travail.
                    	</p>
                    <br>
                    	<p>
                    		Depuis le 1er janvier 2003, la Région assure également le versement aux employeurs d’apprentis de l’Indemnité
                    		Compensatrice Forfaitaire pour soutenir et accompagner l’effort de formation des entreprises. Actuellement,
                    		ce sont 31 millions d’euros qui vont être versés à 12 000 entreprises de la région Centre.
                    	</p>
                    <br>
                    	<p>
                    		La Région Centre développe une politique dynamique en matière d’égalité des chances. À ce titre,
                    		des mesures ont été mises en œuvre pour favoriser l’accès aux savoirs et à la connaissance pour tous.
                    	</p>
                    <br>
                    	<p>
                    		Depuis 2008, en collaboration avec le GIP RECIA, la Région Centre a financé le raccordement des CFA
                    		au réseau haut débit régional et le déploiement de réseaux internes afin de permettre le développement
                    		des usages pédagogiques des outils numériques.
                    	</p>
                    <br>
                    	<p>
                    		À la suite de ces travaux, la Région Centre a lancé le projet d’un Environnement Numérique de Travail
                    		spécifique aux CFA, à partir de l’ENT Net O’Centre déployé dans les lycées.
                    	</p>
                    <br>
                    	<p>
                    		En 2011, trois CFA pilotes ont testé les différents services de l’ENT, Net O’Centre, afin de l’adapter
                    		aux spécificités de la formation par apprentissage.
                    	</p>
                    <br>
                    	<p>
                    		En septembre 2012, un groupe de 6 CFA supplémentaires a été doté de l’ENT Net’O Centre.
                    	</p>
                    <br>
                    	<p>
                    		En septembre 2013, ce seront 11 CFA supplémentaires qui en seront équipés.
                    	</p>
                    <br>
						<p>
							Pour plus d'informations sur les dispositifs proposés par la
							Région Centre aux lycéens, apprentis et étudiants, ne manquez pas
							de visiter <a target="_blank" href="http://www.jeunesOCentre.fr">www.jeunesOCentre.fr</a>
							ou <a target="_blank" href="http://www.regioncentre.fr">www.regioncentre.fr</a>
						</p>

				</div>

			</div>

		</div>

	</div>

</div>

<script type="text/javascript" src="/esco-accueil/js/esco-accueil-page-readmore.js"></script>
