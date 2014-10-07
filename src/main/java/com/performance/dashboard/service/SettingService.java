package com.performance.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.performance.dashboard.entity.DefaultTheme;
import com.performance.dashboard.entity.DefaultVersion;
import com.performance.dashboard.entity.DefaultPlatform;
import com.performance.dashboard.entity.Platform;
import com.performance.dashboard.entity.Version;
import com.performance.dashboard.repository.DefaultPlatformDAO;
import com.performance.dashboard.repository.DefaultThemeDAO;
import com.performance.dashboard.repository.DefaultVersionDAO;

/*
 * It is for the platform and version default setting.
 */

@Service
@Transactional
public class SettingService {
	private DefaultPlatformDAO defaultPlatformDAO;
	private DefaultVersionDAO defaultVersionDAO;
	private DefaultThemeDAO defaultThemeDAO;

	public DefaultPlatformDAO getDefaultPlatformDAO() {
		return defaultPlatformDAO;
	}

	@Autowired
	public void setDefaultPlatformDAO(DefaultPlatformDAO defaultPlatformDAO) {
		this.defaultPlatformDAO = defaultPlatformDAO;
	}

	public DefaultVersionDAO getDefaultVersionDAO() {
		return defaultVersionDAO;
	}
	
	@Autowired
	public void setDefaultVersionDAO(DefaultVersionDAO defaultVersionDAO) {
		this.defaultVersionDAO = defaultVersionDAO;
	}
	
	public DefaultThemeDAO getDefaultThemeDAO() {
		return defaultThemeDAO;
	}

	@Autowired
	public void setDefaultThemeDAO(DefaultThemeDAO defaultThemeDAO) {
		this.defaultThemeDAO = defaultThemeDAO;
	}
	
	public void setDefaultVersion(Version version){
		List<DefaultVersion> list = (List<DefaultVersion>)defaultVersionDAO.findAll();
		if(list.size() != 1){
			//throw exception
		}else{
			DefaultVersion defaultVersion = list.get(0);
			defaultVersion.setVersion(version);
			defaultVersionDAO.save(defaultVersion);
		}		
	}
	
	public void setDefaultPlatform(Platform platform){
		List<DefaultPlatform> list = (List<DefaultPlatform>)defaultPlatformDAO.findAll();
		if(list.size() != 1){
			//throw exception
		}else{
			DefaultPlatform defaultPlatform = list.get(0);
			defaultPlatform.setPlatform(platform);
			defaultPlatformDAO.save(defaultPlatform);
		}		
	}
	
	public void setDefaultTheme(String theme){
		List<DefaultTheme> list = (List<DefaultTheme>)defaultThemeDAO.findAll();
		if(list.size() != 1){
			//throw exception
		}else{
			DefaultTheme defaultTheme = list.get(0);
			defaultTheme.setTheme(theme);
			defaultThemeDAO.save(defaultTheme);
		}		
	}
	
	public Version getDefaultVersion(){
		List<DefaultVersion> list = (List<DefaultVersion>)defaultVersionDAO.findAll();
		if(list.size() != 1){
			//table should have only one record.
			return null;
		}else{
			return list.get(0).getVersion();
		}
	}
	
	public Platform getDefaultPlatform(){
		List<DefaultPlatform> list = (List<DefaultPlatform>)defaultPlatformDAO.findAll();
		if(list.size() != 1){
			//table should have only one record.
			return null;
		}else{
			return list.get(0).getPlatform();
		}
	}
	
	
	public String getDefaultTheme(){
		List<DefaultTheme> list = (List<DefaultTheme>)defaultThemeDAO.findAll();
		if(list.size() != 1){
			//table should have only one record.
			return null;
		}else{
			return list.get(0).getTheme();
		}
	}
}
