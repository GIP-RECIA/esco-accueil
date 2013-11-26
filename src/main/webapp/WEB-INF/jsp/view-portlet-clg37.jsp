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

				<div id="content_netocentre" class="text" style="height: 300px">

					<div id="text_CLG37" style="padding: 0px 50px 0px 15px; float: left; width: 40%; height: 282px; font-family: Arial,Helvetica,sans-serif; font-size: 11pt;display:none;">
						<br>
						<br>
						<strong>Bienvenue sur l'espace de travail Touraine-eschool.fr</strong>
						<br>
						<br>
						<br>
						Mis en place par le Conseil général d'Indre-et-Loire, l'espace de travail touraine-eschool.fr est destiné aussi bien aux élèves, parents et professeurs. Il permet de consulter emploi du temps, cours en ligne, dates de devoirs et corrigés, cahier de texte, notes et absences.
						<br>
						<br>
						Le Conseil général d'Indre-et-Loire met tout en oeuvre pour favoriser la réussite des collégiens et leur donner les moyens de tirer pleinement parti du numérique dans leurs apprentissages.
						<br>
						<br>
					</div>
					<div id="img_CLG37" style="float: left; margin-left: 1px; width: 40%;display:none;">
						<img src="/esco-accueil/img/clg37-visuel-ENT.jpg" alt="L'ENT Touraine-eschool.fr" style="width: 500px;">
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

	<script type="text/javascript"
		src="/esco-accueil/js/esco-accueil.js"></script>

</div>
