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

import com.performance.dashboard.dto.ScenarioDTO;
import com.performance.dashboard.entity.Group;
import com.performance.dashboard.entity.Scenario;
import com.performance.dashboard.service.GroupService;
import com.performance.dashboard.service.ScenarioService;

@Controller
@RequestMapping(value = "/admin/scenario")
public class ScenarioAdmin {
	@Autowired
	private ScenarioService scenarioService;
	
	@Autowired
	private GroupService groupService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getScenario(Model model) {
		List<Scenario> scenarios = scenarioService.getAllScenarios();
		model.addAttribute("scenarios", scenarios);
		return "admin/scenario";
	}

	/**
	 * Scenario:Create
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String getAdd(Model model) {
		model.addAttribute("scenario", new Scenario());
		model.addAttribute("groups", groupService.getAllGroups());
		model.addAttribute("action", "create");
		return "admin/scenarioEdit";
	}

	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String addScenario(@ModelAttribute("scenarioDTO") ScenarioDTO scenarioDTO, RedirectAttributes redirectAttributes) {
		Group group = groupService.getGroupByName(scenarioDTO.getGroup());
		Scenario scenario = new Scenario();
		scenario.setId(scenarioDTO.getId());
		scenario.setName(scenarioDTO.getName());
		scenario.setDescription(scenarioDTO.getDescription());
		scenario.setGroup(group);
		scenarioService.saveScenario(scenario);
		redirectAttributes.addFlashAttribute("message", "New scenario is successfully created.");
		
		return "redirect:/admin/scenario";
	}

	/**
	 * Scenario:Update
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String editScenario(@PathVariable("id") Long id, Model model) {
		model.addAttribute("scenario", scenarioService.getScenario(id));
		model.addAttribute("groups", groupService.getAllGroups());
		model.addAttribute("action", "edit");
		return "admin/scenarioEdit";
	}

	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(@ModelAttribute("scenarioDTO") ScenarioDTO scenarioDTO, RedirectAttributes redirectAttributes) {
		
		Group group = groupService.getGroupByName(scenarioDTO.getGroup());
		Scenario scenario = new Scenario();
		scenario.setId(scenarioDTO.getId());
		scenario.setName(scenarioDTO.getName());
		scenario.setDescription(scenarioDTO.getDescription());
		scenario.setGroup(group);
		
		scenarioService.saveScenario(scenario);
		redirectAttributes.addFlashAttribute("message", "Scenario is successfully updated.");
		return "redirect:/admin/scenario";
	}

	/**
	 * Scenario:Delete
	 * 
	 * @param id
	 * @return
	 */

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String deleteScenario(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        String message = null;
        boolean warning = false;
		try{
			scenarioService.deleteScenario(id);
		    message = "Scenario is successfully deleted.";
        }catch(Exception e){
        	message = "Scenario can not be deleted, check whether it is in use.";
        	warning = true;
        }
		
		redirectAttributes.addFlashAttribute("message", message);
		redirectAttributes.addFlashAttribute("warning", warning);		
		return "redirect:/admin/scenario";	
	}
}
