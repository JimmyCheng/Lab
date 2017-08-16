package com.performance.dashboard.repository;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import com.performance.dashboard.entity.Platform;

@ContextConfiguration(locations = { "/applicationContext.xml" })
public class PlatformDAOTest extends SpringTransactionalTestCase {

    @Autowired
    private PlatformDAO platformDAO;
    
    @Test
    public void testFindAll() throws Exception {
    	System.out.println("++++++++++++++++++++++++++++++++Begin to find all++++++++++++++++++");
    	List<Platform> results = (List<Platform>) platformDAO.findAll();
        
        for(Platform platfrom: results){
        	System.out.println("####:" + platfrom.getName());
        }
        System.out.println("++++++++++++++++++++++++++++++++End to find all++++++++++++++++++");
    }
    

}
