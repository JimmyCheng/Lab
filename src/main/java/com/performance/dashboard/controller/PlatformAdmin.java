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

import com.performance.dashboard.entity.Platform;
import com.performance.dashboard.service.PlatformService;

@Controller
@RequestMapping(value = "/admin/platform")
public class PlatformAdmin {
	@Autowired
	private PlatformService platformService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getPlatform(Model model) {
		List<Platform> platforms = platformService.getAllPlatforms();
		model.addAttribute("platforms", platforms);
		return "admin/platform";
	}

	/**
	 * Platfrom:Create
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String getAdd(Model model) {
		model.addAttribute("platform", new Platform());
		model.addAttribute("action", "create");
		return "admin/platformEdit";
	}
	
	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String addPlatform(@ModelAttribute("platform") Platform newPlatform, RedirectAttributes redirectAttributes) {
		platformService.savePlatform(newPlatform);
		redirectAttributes.addFlashAttribute("message", "New platform is successfully created.");
		return "redirect:/admin/platform";
	}

	/**
	 * Platfrom:Update
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String editPlatform(@PathVariable("id") Long id, Model model) {
		model.addAttribute("platform", platformService.getPlatform(id));
		model.addAttribute("action", "edit");
		return "admin/platformEdit";
	}

	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(@ModelAttribute("platform") Platform platform, RedirectAttributes redirectAttributes) {
		platformService.savePlatform(platform);
		redirectAttributes.addFlashAttribute("message", "Platform is successfully updated.");
		return "redirect:/admin/platform";
	}

	/**
	 * Platfrom:Delete
	 * 
	 * @param id
	 * @return
	 */

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String deletePlatform(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        String message = null;
        boolean warning = false;
		try{
		    platformService.deletePlatform(id);
		    message = "Platform is successfully deleted.";
        }catch(Exception e){
        	message = "Platform can not be deleted, check whether it is in use.";
        	warning = true;
        }
		
		redirectAttributes.addFlashAttribute("message", message);
		redirectAttributes.addFlashAttribute("warning", warning);
		return "redirect:/admin/platform";
	}

}
