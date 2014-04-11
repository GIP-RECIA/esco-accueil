/**
 * Copyright (C) 2012 Esup Portail http://www.esup-portail.org
 * Copyright (C) 2012 RECIA http://www.recia.fr
 * @Author (C) 2012 Julien Gribonvald <julien.gribonvald@recia.fr>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *         http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.esco.portlet.accueil.services;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import javax.portlet.PortletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.util.Assert;

/**
 * @author GIP RECIA - Julien Gribonvald
 * 12 déc. 2012
 */
public class UserAgentInspector implements InitializingBean {

	private final static Logger LOGGER = Logger.getLogger(UserAgentInspector.class);

	/** Liste des regex validant les user-agent autorisés. */
	private List<String> userAgentAutorized;

	/** Liste des regex validant les user-agent non sécure. */
	private List<String> userAgentNotSecure;

	/** liste des pattern compilé à partir des regex pour les UAA. */
	private final List<Pattern> patternsUAA = new ArrayList<Pattern>();
	/** liste des pattern compilé à partir des regex pour les UAS. */
	private final List<Pattern> patternsUAS = new ArrayList<Pattern>();

	/**
	 * Contructor of the object UserAgentInspector.java.
	 */
	private UserAgentInspector() {
		super();
	}

	/**
	 * Vérifie la comaptibilité du user-agent avec la liste des agent connus valide.
	 * @param req PortletRequest pour obtenir le user-agent.
	 * @return <code>boolean</code> Vrai si le user-egent match avec l'une des valeurs listée.
	 */
	public boolean isAuthorized(final PortletRequest req) {

		boolean isAuthorized = false;

		// Assertions.
		if (req == null) {
			String msg = "Argument 'req' cannot be null";
			throw new IllegalArgumentException(msg);
		}

		final String userAgent = req.getProperty("user-agent").toLowerCase();
		if (LOGGER.isDebugEnabled()){
			LOGGER.debug("Access from user-agent : " + userAgent);
		}
		if (userAgent != null && patternsUAA.size() != 0) {
			for (Pattern pattern : patternsUAA) {
				if (pattern.matcher(userAgent).matches()) {
					isAuthorized = true;
					break;
				}
			}
		}
		if (!isAuthorized && LOGGER.isInfoEnabled()){
			LOGGER.info("User-Agent is not in the list of managed user-agent : " + userAgent);
		}

		return isAuthorized;

	}

	/**
	 * Vérifie la que le user-agent est sécurisé avec la liste des agent connus non valide.
	 * @param req PortletRequest pour obtenir le user-agent.
	 * @return <code>boolean</code> Faux si le user-egent match avec l'une des valeurs listée.
	 */
	public boolean isSecure(final PortletRequest req) {
		boolean isSecure = true;

		// Assertions.
		if (req == null) {
			String msg = "Argument 'req' cannot be null";
			throw new IllegalArgumentException(msg);
		}
		final String userAgent = req.getProperty("user-agent").toLowerCase();
		if (LOGGER.isDebugEnabled()){
			LOGGER.debug("Access from user-agent : " + userAgent);
		}
		if (userAgent != null && patternsUAS.size() != 0) {
			for (Pattern pattern : patternsUAS) {
				if (pattern.matcher(userAgent).matches()) {
					isSecure = false;
					break;
				}
			}
		}
		if (!isSecure && LOGGER.isInfoEnabled()){
			LOGGER.info("User-Agent is in the list of unsecure user-agent : " + userAgent);
		}

		return isSecure;
	}


	/**
	 * Setter of attribute userAgentAutorized.
	 * @param userAgentAutorized the attribute userAgentAutorized to set
	 */
	public void setUserAgentAutorized(final List<String> userAgentAutorized) {
		this.userAgentAutorized = userAgentAutorized;
	}

	/**
	 * Setter of attribute userAgentNotSecure.
	 * @param userAgentNotSecure the attribute userAgentNotSecure to set
	 */
	public void setUserAgentNotSecure(List<String> userAgentNotSecure) {
		this.userAgentNotSecure = userAgentNotSecure;
	}

	/**
	 * @see org.springframework.beans.factory.InitializingBean#afterPropertiesSet()
	 */
	public void afterPropertiesSet() {
		Assert.notEmpty(userAgentAutorized, "Il est nécessaire de spécifier une liste de navigateurs compatibles !");
		Assert.notEmpty(userAgentNotSecure, "Il est nécessaire de spécifier une liste de navigateurs non sécure !");
		// Compile our patterns
		for (String userAgent : userAgentAutorized) {
			patternsUAA.add(Pattern.compile(userAgent.toLowerCase()));
		}
		for (String userAgent : userAgentNotSecure) {
			patternsUAS.add(Pattern.compile(userAgent.toLowerCase()));
		}
	}
}
