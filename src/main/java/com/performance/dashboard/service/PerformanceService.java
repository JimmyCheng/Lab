package com.performance.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.performance.dashboard.entity.Benchmark;
import com.performance.dashboard.entity.Group;
import com.performance.dashboard.entity.Performance;
import com.performance.dashboard.entity.Scenario;
import com.performance.dashboard.model.DetailData;
import com.performance.dashboard.model.GeneralData;
import com.performance.dashboard.model.GroupData;
import com.performance.dashboard.repository.BenchmarkDAO;
import com.performance.dashboard.repository.GroupDAO;
import com.performance.dashboard.repository.PerformanceDAO;
import com.performance.dashboard.repository.ScenarioDAO;

@Service
public class PerformanceService {

	private PerformanceDAO performanceDAO;
	private GroupDAO groupDAO;
	private ScenarioDAO scenarioDAO;
	private BenchmarkDAO benchmarkDAO;
	
	public PerformanceDAO getPerformanceDAO() {
		return performanceDAO;
	}

	@Autowired
	public void setPerformanceDAO(PerformanceDAO performanceDAO) {
		this.performanceDAO = performanceDAO;
	}
	
	@Autowired
	public void setGroupDAO(GroupDAO groupDAO) {
		this.groupDAO = groupDAO;
	}
	
	@Autowired
	public void setScenarioDAO(ScenarioDAO scenarioDAO) {
		this.scenarioDAO = scenarioDAO;
	}
	
	@Autowired
	public void setBenchmarkDAO(BenchmarkDAO benchmarkDAO) {
		this.benchmarkDAO = benchmarkDAO;
	}
	
	public List<Performance> getAllPerformances(){
		return (List<Performance>)performanceDAO.findAll();
	}
	
	public List<Performance> getPerformanceTrends(Long platformId, Long scenarioId, Long versionId){
		return (List<Performance>)performanceDAO.findByPlatformIdAndScenarioIdAndVersionIdOrderByCreatedDesc(platformId, scenarioId, versionId);
    }
	
	public GeneralData getGeneralData(Long platformId, Long versionId) {
        GeneralData generalData = new GeneralData();
		for (Group group : groupDAO.findAll()) {
			GroupData groupData = new GroupData();
			groupData.setName(group.getName());
			for (Scenario scenario: scenarioDAO.findByGroupId(group.getId())) {
				Long scenarioId = scenario.getId();
				DetailData detailData = new DetailData();
				detailData.setId(scenarioId);
				detailData.setName(scenario.getName());
				Benchmark benchmark = benchmarkDAO.findByPlatformIdAndScenarioIdAndVersionId(platformId, scenarioId, versionId);
				
				if(benchmark != null){
				    detailData.setBenchmark(benchmark.getResult());
				}else{
					detailData.setBenchmark(-1);
				}
				
				List<Performance> perfList = performanceDAO.findByPlatformIdAndScenarioIdAndVersionIdOrderByCreatedDesc(platformId, scenarioId, versionId);
				if(perfList.size() > 0){
				   detailData.setPerformance(perfList.get(0).getResult());
				}else{
					detailData.setPerformance(0);	
				}
				
				groupData.getDetailDatas().add(detailData);
			}
			
			//if group doesn't contains any scenarios, don't include it.
			if(groupData.getDetailDatas().size() > 0) {
				generalData.getGroupDatas().add(groupData);
			}
		}
		return generalData;
	}
	
	public void deletePerformance(Long id) {
		performanceDAO.delete(id);
	}	
}
