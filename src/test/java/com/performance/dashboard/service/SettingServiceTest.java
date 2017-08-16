package com.performance.dashboard.service;

import org.junit.Ignore;
import org.junit.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import com.performance.dashboard.entity.Platform;
import com.performance.dashboard.entity.Version;
import com.performance.dashboard.service.SettingService;

import org.junit.Assert;
@ContextConfiguration(locations = { "/applicationContext.xml" })
@ActiveProfiles("test")
public class SettingServiceTest extends SpringTransactionalTestCase {
    @Autowired
    private SettingService settingService;

    @Test
    @Ignore
    public void testGetDefaultVersion() throws Exception {
    	
    	System.out.println("++++++++++++++++++++++++++++++++Begin to get the default version++++++++++++++++++");
        Version version = settingService.getDefaultVersion();
        System.out.println("####:" + version.getName());
        System.out.println("++++++++++++++++++++++++++++++++End to get the default version++++++++++++++++++");
    }
    
    @Test
    @Ignore
    public void testGetDefaultPlatform() throws Exception {
    	
    	System.out.println("++++++++++++++++++++++++++++++++Begin to get the default platform++++++++++++++++++");
        Platform platform = settingService.getDefaultPlatform();
        System.out.println("####:" + platform.getName());
        System.out.println("++++++++++++++++++++++++++++++++End to get the default platform++++++++++++++++++");
    }
    
    @Test
    public void testGetDefaultTheme() throws Exception {
    	System.out.println("++++++++++++++++++++++++++++++++Begin to get the default theme++++++++++++++++++");
        String theme = settingService.getDefaultTheme();
        System.out.println("####:" + theme);
        Assert.assertTrue(theme != null && theme.length() > 0);
 
        System.out.println("++++++++++++++++++++++++++++++++End to get the default theme++++++++++++++++++");
    }    
}
