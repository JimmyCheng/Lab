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

import com.performance.dashboard.entity.User;
import com.performance.dashboard.service.UserService;

@Controller
@RequestMapping(value = "/admin/user")
public class UserAdmin {
	@Autowired
	private UserService userService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getUser(Model model) {
		List<User> users = userService.getAllUsers();
		model.addAttribute("users", users);
		return "admin/user";
	}

	/**
	 * Platfrom:Update
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String editUser(@PathVariable("id") Long id, Model model) {
		model.addAttribute("user", userService.getUser(id));
		model.addAttribute("action", "edit");
		return "admin/userEdit";
	}

	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(@ModelAttribute("user") User user, RedirectAttributes redirectAttributes) {
		userService.saveUser(user);
		redirectAttributes.addFlashAttribute("message", "User is successfully updated.");
		return "redirect:/admin/user";
	}

	/**
	 * Platfrom:Delete
	 * 
	 * @param id
	 * @return
	 */

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String deleteUser(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
		userService.deleteUser(id);
		redirectAttributes.addFlashAttribute("message", "User is successfully deleted.");
		return "redirect:/admin/user";
	}
}
