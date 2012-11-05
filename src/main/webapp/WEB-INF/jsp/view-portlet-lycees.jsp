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

				<div id="content" class="esco-accueil">
					<div id="slider" class="esco-accueil">
						<ul>
							<li><img src="/esco-accueil/img/netocentre.jpg"	title="NetOCentre"></li>
							<li><img src="/esco-accueil/img/region.jpg"	title="Région Centre"></li>
							<li><img src="/esco-accueil/img/academie.jpg" title="Académie Orléans-Tours"></li>
							<li><img src="/esco-accueil/img/agricole.jpg" title="Enseignement Agricole"></li>
						</ul>
					</div>
					<div id="navigation" class="esco-accueil">
						<ul>
							<li><img src="/esco-accueil/img/thumb_netocentre.jpg" alt="NetO'Centre" />
								<div class="esco-accueil meta">
									<h3>NetO'Centre</h3>
									<p>Qu’est-ce que c'est ?</p>
									<p>Quels sont les services et applications disponibles ?</p>
									<a class="readmore"
										href="/netocentre/render.userLayoutRootNode.uP?uP_root=root&uP_sparam=activeTab&activeTab=netocentre">En
										savoir plus </a>
								</div></li>
							<li><img src="/esco-accueil/img/thumb_region.jpg" />
								<div class="esco-accueil meta">
									<h3>Région Centre</h3>
									<p>La Région a la responsabilité des conditions matérielles offertes ...</p>
									<a class="readmore"
										href="/netocentre/render.userLayoutRootNode.uP?uP_root=root&uP_sparam=activeTab&activeTab=region">En
										savoir plus </a>
								</div></li>
							<li><img src="/esco-accueil/img/thumb_academie.jpg" />
								<div class="esco-accueil meta">
									<h3>Académie Orléans-Tours</h3>
									<p>Le développement des usages numériques est une volonté forte ...</p>
									<a class="readmore"
										href="/netocentre/render.userLayoutRootNode.uP?uP_root=root&uP_sparam=activeTab&activeTab=academie">En
										savoir plus </a>
								</div></li>
							<li><img src="/esco-accueil/img/thumb_agricole.jpg" />
								<div class="esco-accueil meta">
									<h3>Enseignement Agricole</h3>
									<p>Les lycées agricoles ... à l'ère du numérique !</p>
									<a class="readmore"
										href="/netocentre/render.userLayoutRootNode.uP?uP_root=root&uP_sparam=activeTab&activeTab=agricole">En
										savoir plus </a>
								</div></li>
						</ul>
					</div>
				</div>

			</div>

		</div>

	</div>

</div>

<script type="text/javascript" src="/esco-accueil/js/esco-accueil.js"></script>