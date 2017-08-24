package com.performance.dashboard.repository;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.performance.dashboard.entity.Platform;
import com.performance.dashboard.test.Profiles;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/applicationContext.xml" })
@ActiveProfiles(Profiles.UNIT_TEST)
public class PlatformDAOTest  {

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
