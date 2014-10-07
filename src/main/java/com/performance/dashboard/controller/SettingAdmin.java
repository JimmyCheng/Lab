package com.performance.dashboard.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.performance.dashboard.entity.Platform;
import com.performance.dashboard.entity.Version;
import com.performance.dashboard.service.PlatformService;
import com.performance.dashboard.service.SettingService;
import com.performance.dashboard.service.VersionService;

@Controller
@RequestMapping(value = "/admin/setting")
public class SettingAdmin {
	@Autowired
	private SettingService settingService;
	
	@Autowired
	private VersionService versionService;
	
	@Autowired
	private PlatformService platformService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getSetting(Model model) {
		Version version = settingService.getDefaultVersion();
		Platform platform = settingService.getDefaultPlatform();
		String theme = settingService.getDefaultTheme();
		
        List<String> themes = new ArrayList<String>();
        themes.add("bar");
        themes.add("gauge");
        themes.add("line");
		
		model.addAttribute("platforms", platformService.getAllPlatforms());
		model.addAttribute("versions", versionService.getAllVersions());
		model.addAttribute("themes", themes);
	    model.addAttribute("defaultVersion", version);
	    model.addAttribute("defaultPlatform", platform);
	    model.addAttribute("defaultTheme", theme);
	    
		return "admin/setting";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String saveSetting(@RequestParam("platform") String platform, 
			                  @RequestParam("version") String version, 
			                  @RequestParam("theme") String theme,
			                  RedirectAttributes redirectAttributes) {
		Platform defaultPlatform = platformService.getPlatformByName(platform);
		settingService.setDefaultPlatform(defaultPlatform);
		
		Version defaultVersion = versionService.getVersionByName(version);
		settingService.setDefaultVersion(defaultVersion);
		
		settingService.setDefaultTheme(theme);
		
		redirectAttributes.addFlashAttribute("message", "Default setting is successfully updated.");
		return "redirect:/admin/setting";
	}
}

