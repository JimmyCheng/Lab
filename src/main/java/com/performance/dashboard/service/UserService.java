package com.performance.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.performance.dashboard.entity.User;
import com.performance.dashboard.repository.UserDAO;

@Service
@Transactional
public class UserService {
	private UserDAO userDAO;

	public UserDAO getUserDAO() {
		return userDAO;
	}

	@Autowired
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	public List<User> getAllUsers(){
		return (List<User>)userDAO.findAll();
	}
	
	public void deleteUser(Long id) {
		userDAO.delete(id);
	}
	
	public void saveUser(User user){
		userDAO.save(user);
	}
	
	public User getUser(Long id){
		return userDAO.findOne(id);
	}
	
	public User getUserByName(String name){
		return userDAO.findByName(name);
	}
	
}
