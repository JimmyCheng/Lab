package com.performance.dashboard.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;

import com.performance.dashboard.entity.Performance;
import com.performance.dashboard.entity.Platform;
import com.performance.dashboard.entity.Version;
import com.performance.dashboard.model.GeneralData;
import com.performance.dashboard.service.SettingService;
import com.performance.dashboard.service.PerformanceService;
import com.performance.dashboard.service.PlatformService;

@Controller
@RequestMapping(value = "/")
public class MainController {

    @Autowired
    private PerformanceService performanceService;
    
    @Autowired
    private PlatformService platformService; 
    
    @Autowired
    private SettingService settingService;
    
    private Long selectVersionId;
    private Long selectPlatformId;
    private String selectTheme;
    
    @ModelAttribute("platforms")
    public List<Platform> getPlatforms(){
    	return platformService.getAllPlatforms();
    }
	
    @RequestMapping(method = RequestMethod.GET)
    public String firstPage(Model model) {
        Platform selectPlatform = settingService.getDefaultPlatform();
        Version selectVersion = settingService.getDefaultVersion();
        
        selectPlatformId = selectPlatform.getId();
        selectVersionId = selectVersion.getId();
        selectTheme = settingService.getDefaultTheme();
        
        GeneralData generalData = performanceService.getGeneralData(selectPlatformId, selectVersionId);
        model.addAttribute("performance", generalData);
        model.addAttribute("defaultPlatform", selectPlatform.getName());
        model.addAttribute("defaultTheme", selectTheme);
        return "main";
    }
    
    @RequestMapping(value ="{platform}", method = RequestMethod.GET)
    public String firstPageWithParm(@PathVariable("platform") String platform, Model model) {
        Version selectVersion = settingService.getDefaultVersion();
        Platform selectPlatform = platformService.getPlatformByName(platform);
                
        selectPlatformId = selectPlatform.getId();
        selectVersionId = selectVersion.getId();
        selectTheme = settingService.getDefaultTheme();
        
        GeneralData perfData = performanceService.getGeneralData(selectPlatformId, selectVersionId);
        model.addAttribute("performance", perfData);
        model.addAttribute("defaultPlatform", selectPlatform.getName());
        model.addAttribute("defaultTheme", selectTheme);
        return "main";
    }

	@RequestMapping(value = "about", method = RequestMethod.GET)
	public String getAbount() {
		return "about";
	} 

	@RequestMapping(value = "aboutme", method = RequestMethod.GET)
	public String getAbountMe() {
		return "aboutme";
	} 	
	
	@RequestMapping(value = "trend/{id}", method = RequestMethod.GET)
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public String getTrend(@PathVariable("id") Long id) {
		
		List<Performance> performances = performanceService.getPerformanceTrends(selectPlatformId, id, selectVersionId);
		if(performances.size() <= 0) {
			return null;
		}
       
		SimpleDateFormat sdfSource = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
		
		StringBuffer trendData = new StringBuffer();
		trendData.append("[");
		for(Performance perf: performances){
			trendData.append(perf.getResult());
			trendData.append(",");
		}
		trendData.deleteCharAt(trendData.lastIndexOf(","));
		trendData.append("]:");
		
		trendData.append("[");
		for(Performance perf: performances){
			trendData.append("\"");
			trendData.append(sdfSource.format(perf.getCreated()));
			trendData.append("\",");
		}
		trendData.deleteCharAt(trendData.lastIndexOf(","));
		trendData.append("]");
		
		return trendData.toString();
	}
}
