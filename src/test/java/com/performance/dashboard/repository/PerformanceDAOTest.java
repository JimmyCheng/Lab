package com.performance.dashboard.repository;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import com.performance.dashboard.entity.Performance;

@ContextConfiguration(locations = { "/applicationContext.xml" })
public class PerformanceDAOTest extends SpringTransactionalTestCase {

    @Autowired
    private PerformanceDAO performanceDAO;

    @Test
    public void testFindAll() throws Exception {
    	System.out.println("++++++++++++++++++++++++++++++++Begin to find all++++++++++++++++++");
    	List<Performance> results = (List<Performance>) performanceDAO.findAll();
        
        for(Performance perf: results){
        	System.out.println(perf.toString());
        }
        System.out.println("++++++++++++++++++++++++++++++++End to find all++++++++++++++++++");
    }
    
    @Test
    public void testFindByPlatformId() throws Exception {
    	System.out.println("++++++++++++++++++++++++++++++++Begin to find platform++++++++++++++++++");
    	List<Performance> performances = (List<Performance>) performanceDAO.findByPlatformId(1L);
        if(performances.size() <= 0){
        	System.out.println("****************Nothing is found for testFindByPlatformId!******************");
        }
    	
    	for(Performance perf: performances){
        	System.out.println(perf.toString());
        }
        System.out.println("++++++++++++++++++++++++++++++++End to find platform++++++++++++++++++");        
    }
    
    @Test
    public void testFindByPlatformIdAndGroupId() throws Exception {
    	System.out.println("++++++++++++++++++++++++++++++++Begin to find platform & Scenario++++++++++++++++++");
    	List<Performance> performances = (List<Performance>) performanceDAO.findByPlatformIdAndScenarioId(1L, 1L);
        if(performances.size() <= 0){
        	System.out.println("****************Nothing is found for testFindByPlatformIdAndGroupId!******************");
        }        
    	
    	for(Performance perf: performances){
        	System.out.println(perf.toString());
        }
        System.out.println("++++++++++++++++++++++++++++++++End to find platform & Scenario++++++++++++++++++");        
    }
    
    @Test
    public void testFindByPlatformIdAndGroupIdAndVersion() throws Exception {
    	System.out.println("++++++++++++++++++++++++++++++++Begin to find platform & Scenario & Version++++++++++++++++++");
    	List<Performance> performances = (List<Performance>) performanceDAO.findByPlatformIdAndScenarioIdAndVersionId(1L, 1L, 2L);
        if(performances.size() <= 0){
        	System.out.println("****************Nothing is found!******************");
        }
    	for(Performance perf: performances){
        	System.out.println(perf.toString());
        }
        System.out.println("++++++++++++++++++++++++++++++++End to find platform & Scenario & Version++++++++++++++++++");        
    }
    
    @Test
    public void testfindByPlatformIdAndScenarioIdAndVersionIdOrderByCreated() throws Exception {
    	System.out.println("++++++++++++++++++++++++++++++++Begin to find platform & Scenario & Version & Orderby++++++++++++++++++");
    	List<Performance> performances = (List<Performance>) performanceDAO.findByPlatformIdAndScenarioIdAndVersionIdOrderByCreatedDesc(1L, 1L, 2L);
        if(performances.size() <= 0){
        	System.out.println("****************Nothing is found for ordered peformance!******************");
        }
    	
    	for(Performance perf: performances){
        	System.out.println(perf.toString());
        }
        System.out.println("++++++++++++++++++++++++++++++++End to find platform & Scenario & Version & Orderby++++++++++++++++++");        
    }

}
