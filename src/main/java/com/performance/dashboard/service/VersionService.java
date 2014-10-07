package com.performance.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.performance.dashboard.entity.Version;
import com.performance.dashboard.repository.VersionDAO;

@Service
@Transactional
public class VersionService {
	private VersionDAO versionDAO;

	public VersionDAO getVersionDAO() {
		return versionDAO;
	}

	@Autowired
	public void setVersionDAO(VersionDAO VersionDAO) {
		this.versionDAO = VersionDAO;
	}
	
	public List<Version> getAllVersions(){
		return (List<Version>)versionDAO.findAll();
	}
	
	public void deleteVersion(Long id) {
		versionDAO.delete(id);
	}
	
	public void saveVersion(Version version){
		versionDAO.save(version);
	}
	
	public Version getVersion(Long id){
		return versionDAO.findOne(id);
	}
	
	public Version getVersionByName(String name){
		return versionDAO.findByName(name);
	}
}
