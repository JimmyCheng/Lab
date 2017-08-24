package com.performance.dashboard.repository;

import java.util.List;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.performance.dashboard.test.Profiles;

import com.performance.dashboard.entity.DefaultPlatform;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/applicationContext.xml" })
@ActiveProfiles(Profiles.UNIT_TEST)
public class DefaultPlatformDAOTest {
	@Autowired
	protected DataSource dataSource;

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
