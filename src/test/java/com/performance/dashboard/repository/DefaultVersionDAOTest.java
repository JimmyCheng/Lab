package com.performance.dashboard.repository;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import com.performance.dashboard.entity.DefaultVersion;

@ContextConfiguration(locations = { "/applicationContext.xml" })
public class DefaultVersionDAOTest extends SpringTransactionalTestCase {

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
