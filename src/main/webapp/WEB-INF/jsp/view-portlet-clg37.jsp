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

				<div id="content">
					<div id="slider" class="esco-accueil">
						<ul>
							<li><img src="/esco-accueil/img/touraine-eschool.jpg" alt="Touraine e-school"></li>
							<li><img src="/esco-accueil/img/cg37.jpg"
								alt="Collège : le Conseil général d'Indre-et-Loire crée les conditions de la réussite"></li>
							<li><img src="/esco-accueil/img/dsden37.jpg"
								alt="Académie Orléans-Tours - Direction des Services Départementaux de l'Éducation Nationale Indre-et-Loire
								- Liberté - Égalité - Fraternité - République française"></li>
						</ul>
					</div>
					<div id="navigation" class="esco-accueil">
						<ul>
							<li><img src="/esco-accueil/img/thumb_touraine-eschool.jpg" alt="Touraine e-school" />
								<div class="esco-accueil meta">
									<h3>L'ENT Touraine e-school</h3>
									<p>Quels en sont les intérêts ?</p>
									<a class="readmore"
										href="/portail/f/touraine-eschool">En
										savoir plus </a>
								</div></li>
							<li><img src="/esco-accueil/img/thumb_cg37.jpg"
								alt="Collège : le Conseil général d'Indre-et-Loire crée les conditions de la réussite" />
								<div class="esco-accueil meta">
									<h3>Conseil général d'Indre-et-Loire</h3>
									<p>Collège : le Conseil général d'Indre-et-Loire crée les conditions de la réussite ...</p>
									<a class="readmore"
										href="/portail/f/cg37">En
										savoir plus </a>
								</div></li>
							<li><img src="/esco-accueil/img/thumb_dsden37.jpg"
								alt="Académie Orléans-Tours - Direction des Services Départementaux de l'Éducation Nationale Indre-et-Loire
								- Liberté - Égalité - Fraternité - République française" />
								<div class="esco-accueil meta">
									<h3>Académie Orléans-Tours</h3>
									<p>Un partenariat actif pour le développement des usages numériques ...</p>
									<a class="readmore"
										href="/portail/f/dsden37">En
										savoir plus </a>
								</div></li>
						</ul>
					</div>
					<div id="nojs" class="erreur">
						<span>
							<spring:message code="error.javascriptengine" />
						</span>
					</div>
					<div id="nocookies" class="erreur">
						<span>
							<spring:message code="error.cookiesengine" />
						</span>
					</div>
				</div>
			</div>

		</div>

	</div>

</div>

<script type="text/javascript" src="/esco-accueil/js/esco-accueil.js"></script>