package com.performance.dashboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.performance.dashboard.entity.Performance;
import com.performance.dashboard.service.PerformanceService;

@Controller
@RequestMapping(value = "/admin/performance")
public class PerformanceAdmin {
	@Autowired
	private PerformanceService performanceService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getPerformance(Model model) {
		List<Performance> performances = performanceService.getAllPerformances();
		model.addAttribute("performances", performances);
		return "admin/Performance";
	}


	/**
	 * Performance:Delete
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String deletePerformance(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
		performanceService.deletePerformance(id);
		redirectAttributes.addFlashAttribute("message", "Performance record is successfully deleted.");
		return "redirect:admin/performance";
	}
}

