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

	protected Logger log = Logger.getLogger(PortletController.class);

	public static final String PREF_CONTEXT_VIEW = "contextView";

	public static final String LYCEES_VIEW = "lycees";
	public static final String CFA_VIEW = "cfa";
	public static final String NETOCENTRE_VIEW = "netocentre";
	public static final String AGRICOLE_VIEW = "agricole";
	public static final String STANDARD_VIEW = "standard";
	public static final String MOBILE_VIEW = "mobile";
	public static final String WAI_VIEW = "wai";

    @RequestMapping("VIEW")
    protected ModelAndView renderView(RenderRequest request, RenderResponse response) throws Exception {
    	//this.init(request, response);
        final PortletPreferences prefs = request.getPreferences();
    	String defaultPortletView = prefs.getValue(PREF_CONTEXT_VIEW,LYCEES_VIEW);

    	if (log.isDebugEnabled()){
    		log.debug("Context selected from portlet preference : " + defaultPortletView);
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
    	//this.init(request, response);
        //final PortletPreferences prefs = request.getPreferences();
		//boolean useDoubleClick = "true".equals(prefs.getValue(PREF_USE_DOUBLE_CLICK, "true"));
    	//boolean useCursorWaitDialog = "true".equals(prefs.getValue(PREF_USE_CURSOR_WAIT_DIALOG, "false"));

		/*ModelMap model = new ModelMap();
    	model.put("sharedSessionId", sharedSessionId);
		model.put("useDoubleClick", useDoubleClick);
		model.put("useCursorWaitDialog", useCursorWaitDialog);
		if(dir == null)
			dir = "";
		model.put("defaultPath", dir);*/
    	return new ModelAndView("view-portlet-"+view, new ModelMap());
    }

	/*@RequestMapping(value = {"VIEW"}, params = {"action=browseMobile"})
    public ModelAndView browseMobile(RenderRequest request, RenderResponse response,
    								@RequestParam String dir) {
    	this.init(request, response);

		String decodedDir = pathEncodingUtils.decodeDir(dir);

		ModelMap model;
		if( !(dir == null || dir.length() == 0 || decodedDir.equals(JsTreeFile.ROOT_DRIVE)) ) {
			if(this.serverAccess.formAuthenticationRequired(decodedDir, userParameters)) {
				ListOrderedMap parentPathes = pathEncodingUtils.getParentsEncPathes(decodedDir, null, null);
				// we want to get the (last-1) key of sortedmap "parentPathes"
				String parentDir = (String)parentPathes.get(parentPathes.size()-2);
				model = new ModelMap("currentDir", dir);
				model.put("parentDir", parentDir);
				model.put("username", this.serverAccess.getUserPassword(decodedDir, userParameters).getUsername());
				model.put("password", this.serverAccess.getUserPassword(decodedDir, userParameters).getPassword());
				model.put("sharedSessionId", sharedSessionId);
				return new ModelAndView("authenticationForm-portlet-mobile", model);
			}
		}
		model = browse(dir);
		model.put("sharedSessionId", sharedSessionId);
        return new ModelAndView("view-portlet-mobile", model);
    }

	@RequestMapping(value = {"VIEW"}, params = {"action=browseWai"})
    public ModelAndView browseWai(RenderRequest request, RenderResponse response,
    								@RequestParam(required=false) String dir,
    								@RequestParam(required=false) String msg) {
		this.init(request, response);

		String decodedDir = pathEncodingUtils.decodeDir(dir);

		if(!serverAccess.isInitialized(userParameters)) {
			serverAccess.initializeServices(userParameters);
		}

		ModelMap model;
		if( !(dir == null || dir.length() == 0 || decodedDir.equals(JsTreeFile.ROOT_DRIVE)) ) {
			if(this.serverAccess.formAuthenticationRequired(decodedDir, userParameters)) {
				ListOrderedMap parentPathes = pathEncodingUtils.getParentsEncPathes(decodedDir, null, null);
				// we want to get the (last-1) key of sortedmap "parentPathes"
				String parentDir = (String)parentPathes.get(parentPathes.size()-2);				model = new ModelMap("currentDir", dir);
				model.put("parentDir", parentDir);
				model.put("username", this.serverAccess.getUserPassword(decodedDir, userParameters).getUsername());
				model.put("password", this.serverAccess.getUserPassword(decodedDir, userParameters).getPassword());
				if(msg != null)
					model.put("msg",msg);
				model.put("sharedSessionId", sharedSessionId);
				return new ModelAndView("authenticationForm-portlet-wai", model);
			}
		}

		model = browse(dir);
		FormCommand command = new FormCommand();
	    model.put("command", command);
	    if(msg != null)
	    	model.put("msg", msg);
	    model.put("sharedSessionId", sharedSessionId);
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

}
