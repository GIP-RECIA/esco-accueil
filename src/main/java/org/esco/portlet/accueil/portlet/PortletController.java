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
package org.esco.portlet.accueil.portlet;

import javax.portlet.PortletPreferences;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;


import org.apache.log4j.Logger;
import org.esco.portlet.accueil.services.UserAgentInspector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;
//import org.springframework.web.portlet.context.PortletRequestAttributes;
//import org.springframework.web.portlet.util.PortletUtils;

@Controller
@Scope("request")
public class PortletController {


	private Logger log = Logger.getLogger(PortletController.class);

	@Autowired
	private UserAgentInspector userAgentInspector;

	private static final String PREF_CONTEXT_VIEW = "contextView";

	private static final String LYCEES_VIEW = "lycees";
	private static final String CFA_VIEW = "cfa";
	private static final String CLG37_VIEW = "clg37";
	private static final String NETOCENTRE_VIEW = "netocentre";
	private static final String AGRICOLE_VIEW = "agricole";
	private static final String STANDARD_VIEW = "standard";
	private static final String MOBILE_VIEW = "mobile";
	private static final String WAI_VIEW = "wai";

    @RequestMapping("VIEW")
    public ModelAndView renderView(RenderRequest request, RenderResponse response) throws Exception {
    	//this.init(request, response);
        final PortletPreferences prefs = request.getPreferences();
    	String defaultPortletView = prefs.getValue(PREF_CONTEXT_VIEW,LYCEES_VIEW);

    	if (log.isDebugEnabled()){
    		log.debug("Context selected from portlet preference : " + defaultPortletView);
    	}

    	if (!userAgentInspector.isAuthorized(request)) {
    		return this.browserError(request, response);
    	}
	    /*if(userAgentInspector.isMobile(request)) {
			return this.browseMobile(request, response, defaultPath);
	    } else {
	    	if(MOBILE_VIEW.equals(defaultPortletView))
	    		return this.browseMobile(request, response, defaultPath);
	    	else if(WAI_VIEW.equals(defaultPortletView))
	    		return this.browseWai(request, response, defaultPath, null);
	    	else*/
	    return this.browseStandard(request, response, defaultPortletView);
	    //}
    }

	@RequestMapping(value = {"VIEW"}, params = {"action=browseStandard"})
    public ModelAndView browseStandard(RenderRequest request, RenderResponse response, final String view) {
    	return new ModelAndView("view-portlet-"+view, new ModelMap());
    }

	@RequestMapping(value = {"VIEW"}, params = {"action=browserError"})
    public ModelAndView browserError(RenderRequest request, RenderResponse response) {
    	return new ModelAndView("browser-error", new ModelMap());
    }

	/*@RequestMapping(value = {"VIEW"}, params = {"action=browseMobile"})
    public ModelAndView browseMobile(RenderRequest request, RenderResponse response,
    								@RequestParam String dir) {

        return new ModelAndView("view-portlet-mobile", model);
    }

	@RequestMapping(value = {"VIEW"}, params = {"action=browseWai"})
    public ModelAndView browseWai(RenderRequest request, RenderResponse response,
    								@RequestParam(required=false) String dir,
    								@RequestParam(required=false) String msg) {

        return new ModelAndView("view-portlet-wai", model);
    }*/


    @RequestMapping("ABOUT")
	public ModelAndView renderAboutView(RenderRequest request, RenderResponse response) throws Exception {
		ModelMap model = new ModelMap();
		return new ModelAndView("about-portlet", model);
	}

    @RequestMapping("HELP")
	public ModelAndView renderHelpView(RenderRequest request, RenderResponse response) throws Exception {
		ModelMap model = new ModelMap();
		return new ModelAndView("help-portlet", model);
	}

	/**
	 * Setter of attribute userAgentInspector.
	 * @param userAgentInspector the attribute userAgentInspector to set
	 */
	public void setUserAgentInspector(UserAgentInspector userAgentInspector) {
		this.userAgentInspector = userAgentInspector;
	}

}
