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

import com.performance.dashboard.dto.BenchmarkDTO;
import com.performance.dashboard.entity.Benchmark;
import com.performance.dashboard.entity.Platform;
import com.performance.dashboard.entity.Scenario;
import com.performance.dashboard.entity.Version;
import com.performance.dashboard.service.BenchmarkService;
import com.performance.dashboard.service.PlatformService;
import com.performance.dashboard.service.ScenarioService;
import com.performance.dashboard.service.VersionService;

@Controller
@RequestMapping(value = "/admin/benchmark")
public class BenchmarkAdmin {
	@Autowired
	private BenchmarkService benchmarkService;

	@Autowired
	private ScenarioService scenarioService;
	
	@Autowired
	private PlatformService platformService;
	
	@Autowired
	private VersionService versionService;
	
	@ModelAttribute("benchmarks")
	public List<Benchmark> getBenchmarks(){
		return benchmarkService.getAllBenchmarks();
	}
	
	@ModelAttribute("platforms")
	public List<Platform> getPlatforms(){
		return platformService.getAllPlatforms();
	}
	
	@ModelAttribute("scenarios")
	public List<Scenario> getScenarios(){
		return scenarioService.getAllScenarios();
	}
	
	@ModelAttribute("versions")
	public List<Version> getVersions(){
		return versionService.getAllVersions();
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String getBenchmark() {
		return "admin/benchmark";
	}

	/**
	 * Benchmark:Create
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String getAdd(Model model) {
		model.addAttribute("benchmark", new Benchmark());
		model.addAttribute("action", "create");
		return "admin/benchmarkEdit";
	}

	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String addBenchmark(@ModelAttribute("benchmarkDTO") BenchmarkDTO benchmarkDTO, RedirectAttributes redirectAttributes) {
		Benchmark benchmark = new Benchmark();
		Scenario scenario = scenarioService.getScenarioByName(benchmarkDTO.getScenario());
		Platform platform = platformService.getPlatformByName(benchmarkDTO.getPlatform());
		Version version = versionService.getVersionByName(benchmarkDTO.getScenario());
		
		benchmark.setId(benchmarkDTO.getId());
		benchmark.setResult(benchmarkDTO.getResult());
		benchmark.setVersion(version);
		benchmark.setScenario(scenario);
		benchmark.setPlatform(platform);
		
		benchmarkService.saveBenchmark(benchmark);	
		
		redirectAttributes.addFlashAttribute("message", "New benchmark is successfully created.");
		return "redirect:/admin/benchmark";
	}

	/**
	 * Benchmark:Update
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
	public String editBenchmark(@PathVariable("id") Long id, Model model) {
		model.addAttribute("benchmark", benchmarkService.getBenchmark(id));
		model.addAttribute("action", "edit");
		return "admin/benchmarkEdit";
	}

	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public String edit(@ModelAttribute("benchmarkDTO") BenchmarkDTO benchmarkDTO, RedirectAttributes redirectAttributes) {
		Benchmark benchmark = new Benchmark();
		Scenario scenario = scenarioService.getScenarioByName(benchmarkDTO.getScenario());
		Platform platform = platformService.getPlatformByName(benchmarkDTO.getPlatform());
		Version version = versionService.getVersionByName(benchmarkDTO.getScenario());
		
		benchmark.setId(benchmarkDTO.getId());
		benchmark.setResult(benchmarkDTO.getResult());
		benchmark.setVersion(version);
		benchmark.setScenario(scenario);
		benchmark.setPlatform(platform);
		
		benchmarkService.saveBenchmark(benchmark);		
		redirectAttributes.addFlashAttribute("message", "Benchmark is successfully updated.");
		return "redirect:/admin/benchmark";
	}

	/**
	 * Benchmark:Delete
	 * 
	 * @param id
	 * @return
	 */

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String deleteBenchmark(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        String message = null;
        boolean warning = false;
		try{
			benchmarkService.deleteBenchmark(id);
		    message = "Benchmark is successfully deleted.";
        }catch(Exception e){
        	message = "Benchmark can not be deleted, check whether it is in use.";
        	warning = true;
        }
		
		redirectAttributes.addFlashAttribute("message", message);
		redirectAttributes.addFlashAttribute("warning", warning);
		return "redirect:/admin/benchmark";
	}
}
