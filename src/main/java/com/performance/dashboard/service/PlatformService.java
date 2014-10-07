package com.performance.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.performance.dashboard.entity.Platform;
import com.performance.dashboard.repository.PlatformDAO;

@Service
@Transactional
public class PlatformService {
	private PlatformDAO platformDAO;

	public PlatformDAO getPlatformDAO() {
		return platformDAO;
	}

	@Autowired
	public void setPlatformDAO(PlatformDAO platformDAO) {
		this.platformDAO = platformDAO;
	}
	
	public List<Platform> getAllPlatforms(){
		return (List<Platform>)platformDAO.findAll();
	}
	
	public void deletePlatform(Long id) {
		platformDAO.delete(id);
	}
	
	public void savePlatform(Platform platform){
		platformDAO.save(platform);
	}
	
	public Platform getPlatform(Long id){
		return platformDAO.findOne(id);
	}
	
	public Platform getPlatformByName(String name){
		return platformDAO.findByName(name);
	}
	
}
