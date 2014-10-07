package com.performance.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.performance.dashboard.entity.Group;
import com.performance.dashboard.repository.GroupDAO;

@Service
@Transactional
public class GroupService {
	private GroupDAO groupDAO;

	public GroupDAO getGroupDAO() {
		return groupDAO;
	}

	@Autowired
	public void setGroupDAO(GroupDAO groupDAO) {
		this.groupDAO = groupDAO;
	}
	
	public List<Group> getAllGroups(){
		return (List<Group>)groupDAO.findAll();
	}
	
	public void deleteGroup(Long id) {
		groupDAO.delete(id);
	}
	
	public void saveGroup(Group group){
		groupDAO.save(group);
	}
	
	public Group getGroup(Long id){
		return groupDAO.findOne(id);
	}
	
	public Group getGroupByName(String name){
		return groupDAO.findByName(name);
	}
}
