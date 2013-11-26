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

					<img src="/esco-accueil/img/touraine-eschool.jpg" alt="Touraine e-school">
					<H3>
						<FONT COLOR="#3F6AA5"><B><a href="https://www.touraine-eschool.fr">www.touraine-eschool.fr</a></B></FONT>
					</H3>
					<br>
					<p>L’accès à l’espace numérique de
					travail devient réalité pour tous les collégiens, leurs professeurs
					et leurs familles grâce au portail <a href="https://www.touraine-eschool.fr">www.touraine-eschool.fr</a></p>
					<br>
					<p>Ce véritable bureau virtuel est accessible depuis n’importe quel
					ordinateur connecté à l’Internet grâce à un seul mot de passe.Depuis son espace personnel, l’utilisateur bénéficie des services
					et ressources en rapport avec son activité. </p>
					<br>
					<P>Ainsi, l’élève présent
					au collège ou à son domicile peut consulter son emploi du temps,
					son cahier de textes, ses notes ; mais aussi de prendre
					connaissance des ressources documentaires ou des éléments de cours
					mis à disposition par les professeurs. Le collégien peut également
					y travailler en collaboration avec ses camarades. Les parents
					peuvent s’y connecter pour suivre en direct la scolarité de leurs
					enfants.</P>
				</div>

			</div>

		</div>

	</div>

</div>

<script type="text/javascript"
	src="/esco-accueil/js/esco-accueil-page-readmore.js"></script>
