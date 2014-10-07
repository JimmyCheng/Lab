package com.performance.dashboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.performance.dashboard.entity.Version;
import com.performance.dashboard.service.VersionService;

@Controller
@RequestMapping(value = "/admin/version")
public class VersionAdmin {
	@Autowired
	private VersionService versionService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getversion(Model model) {
		List<Version> versions = versionService.getAllVersions();
		model.addAttribute("versions", versions);
		return "admin/version";
	}

	/**
	 * Platfrom:Create
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String getAdd(Model model) {
		model.addAttribute("version", new Version());
		model.addAttribute("action", "create");
		return "admin/versionEdit";
	}
	
	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String addversion(@ModelAttribute("version") Version newVersion, RedirectAttributes redirectAttributes) {
		versionService.saveVersion(newVersion);
		redirectAttributes.addFlashAttribute("message", "New version is successfully created.");
		return "redirect:/admin/version";
	}

	/**
	 * Platfrom:Update
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String editversion(@PathVariable("id") Long id, Model model) {
		model.addAttribute("version", versionService.getVersion(id));
		model.addAttribute("action", "edit");
		return "admin/versionEdit";
	}

	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(@ModelAttribute("version") Version version, RedirectAttributes redirectAttributes) {
		versionService.saveVersion(version);
		redirectAttributes.addFlashAttribute("message", "version is successfully updated.");
		return "redirect:/admin/version";
	}

	/**
	 * Platfrom:Delete
	 * 
	 * @param id
	 * @return
	 */

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String deleteversion(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        String message = null;
        boolean warning = false;
		try{
			versionService.deleteVersion(id);
		    message = "Version is successfully deleted.";
        }catch(Exception e){
        	message = "Version can not be deleted, check whether it is in use.";
        	warning = true;
        }
		
		redirectAttributes.addFlashAttribute("message", message);
		redirectAttributes.addFlashAttribute("warning", warning);
		return "redirect:/admin/version";		
	}

}
