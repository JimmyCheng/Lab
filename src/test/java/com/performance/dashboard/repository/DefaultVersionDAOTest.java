package com.performance.dashboard.repository;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.performance.dashboard.entity.DefaultVersion;
import com.performance.dashboard.test.Profiles;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/applicationContext.xml" })
@ActiveProfiles(Profiles.UNIT_TEST)
public class DefaultVersionDAOTest  {

    @Autowired
    private DefaultVersionDAO defaultVersionDAO;
    
    @Test
    public void testFindAll() throws Exception {
    	System.out.println("++++++++++++++++++++++++++++++++Begin to find all default version++++++++++++++++++");
    	List<DefaultVersion> results = (List<DefaultVersion>) defaultVersionDAO.findAll();
        
        for(DefaultVersion version: results){
        	System.out.println("####:" + version.getVersion().getName());
        }
        System.out.println("++++++++++++++++++++++++++++++++End to find all default version++++++++++++++++++");
    }
}
