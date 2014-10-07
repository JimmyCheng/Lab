package com.performance.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.performance.dashboard.entity.Scenario;
import com.performance.dashboard.repository.ScenarioDAO;

@Service
@Transactional
public class ScenarioService {
	private ScenarioDAO scenarioDAO;

	public ScenarioDAO getScenarioDAO() {
		return scenarioDAO;
	}

	@Autowired
	public void setScenarioDAO(ScenarioDAO ScenarioDAO) {
		this.scenarioDAO = ScenarioDAO;
	}
	
	public List<Scenario> getAllScenarios(){
		return (List<Scenario>)scenarioDAO.findAll();
	}
	
	public void deleteScenario(Long id) {
		scenarioDAO.delete(id);
	}
	
	public void saveScenario(Scenario Scenario){
		scenarioDAO.save(Scenario);
	}
	
	public Scenario getScenario(Long id){
		return scenarioDAO.findOne(id);
	}
	
	public Scenario getScenarioByName(String name){
		return scenarioDAO.getByName(name);
	}
	
}
