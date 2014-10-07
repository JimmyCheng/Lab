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

import com.performance.dashboard.entity.Group;
import com.performance.dashboard.service.GroupService;

@Controller
@RequestMapping(value = "/admin/group")
public class GroupAdmin {
	@Autowired
	private GroupService groupService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getGroup(Model model) {
		List<Group> groups = groupService.getAllGroups();
		model.addAttribute("groups", groups);
		return "admin/group";
	}

	/**
	 * group:Create
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String getAdd(Model model) {
		model.addAttribute("group", new Group());
		model.addAttribute("action", "create");
		return "admin/groupEdit";
	}

	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String addGroup(@ModelAttribute("group") Group newgroup, RedirectAttributes redirectAttributes) {
		groupService.saveGroup(newgroup);
		redirectAttributes.addFlashAttribute("message", "New group is successfully created.");
		return "redirect:/admin/group";
	}

	/**
	 * group:Update
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String editGroup(@PathVariable("id") Long id, Model model) {
		model.addAttribute("group", groupService.getGroup(id));
		model.addAttribute("action", "Edit");
		return "admin/groupEdit";
	}

	@RequestMapping(value = "edit/", method = RequestMethod.POST)
	public String edit(@ModelAttribute("group") Group group, RedirectAttributes redirectAttributes) {
		groupService.saveGroup(group);
		redirectAttributes.addFlashAttribute("message", "Group is successfully updated.");
		return "redirect:/admin/group";
	}

	/**
	 * group:Delete
	 * 
	 * @param id
	 * @return
	 */

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String deletegroup(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        String message = null;
        boolean warning = false;
		try{
			groupService.deleteGroup(id);
		    message = "Group is successfully deleted.";
        }catch(Exception e){
        	message = "Group can not be deleted, check whether it is in use.";	
        	warning = true;
        }
		
		redirectAttributes.addFlashAttribute("message", message);
		redirectAttributes.addFlashAttribute("warning", warning);
		return "redirect:admin/group";
	}
}

