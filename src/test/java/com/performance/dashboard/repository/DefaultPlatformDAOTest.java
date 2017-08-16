package com.performance.dashboard.repository;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import com.performance.dashboard.entity.DefaultPlatform;

@ContextConfiguration(locations = { "/applicationContext.xml" })
public class DefaultPlatformDAOTest extends SpringTransactionalTestCase {

    @Autowired
    private DefaultPlatformDAO defaultPlatformDAO;
    
    @Test
    public void testFindAll() throws Exception {
    	System.out.println("++++++++++++++++++++++++++++++++Begin to find all default platform++++++++++++++++++");
    	List<DefaultPlatform> results = (List<DefaultPlatform>) defaultPlatformDAO.findAll();
        
        for(DefaultPlatform platform: results){
        	System.out.println("####:" + platform.getPlatform().getName());
        }
        System.out.println("++++++++++++++++++++++++++++++++End to find all default platform++++++++++++++++++");
    }
}
