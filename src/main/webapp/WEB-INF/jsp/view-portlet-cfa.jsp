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
							<li><img src="/esco-accueil/img/netocentre-cfa.jpg"	alt="NetO'Centre"></li>
							<li><img src="/esco-accueil/img/region.jpg" alt="Région Centre"></li>
						</ul>
					</div>
					<div id="navigation" class="esco-accueil">
						<ul>
							<li><img src="/esco-accueil/img/thumb_netocentre-cfa.jpg" alt="NetO'Centre" />
								<div class="esco-accueil meta">
									<h3>NetO'Centre</h3>
									<p>Qu’est-ce que c'est ?</p>
									<p>Quels sont les services et applications disponibles ?</p>
									<a class="readmore"
										href="/netocentre/render.userLayoutRootNode.uP?uP_root=root&uP_sparam=activeTab&activeTab=netocentre">En
										savoir plus </a>
								</div></li>
							<li><img src="/esco-accueil/img/thumb_region.jpg" alt="Région Centre"/>
								<div class="esco-accueil meta">
									<h3>Région Centre</h3>
									<p>Pour plus d'informations sur les dispositifs proposés par la	Région Centre aux ...</p>
									<a class="readmore"
										href="/netocentre/render.userLayoutRootNode.uP?uP_root=root&uP_sparam=activeTab&activeTab=region">En
										savoir plus </a>
								</div></li>
						</ul>
					</div>
					<div id="nojs" class="erreur">
						<span>
							<spring:message code="error.javascriptengine" />
						</span>
					</div>
				</div>

			</div>

		</div>

	</div>


</div>

<script type="text/javascript" src="/esco-accueil/js/esco-accueil.js"></script>