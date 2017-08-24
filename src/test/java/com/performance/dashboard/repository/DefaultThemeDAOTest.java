package com.performance.dashboard.repository;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.performance.dashboard.entity.DefaultTheme;
import com.performance.dashboard.test.Profiles;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/applicationContext.xml" })
@ActiveProfiles(Profiles.UNIT_TEST)
public class DefaultThemeDAOTest{
	
	@Autowired
	private DefaultThemeDAO defaultThemeDAO;

	@Test
	public void testFindAll() throws Exception {
		System.out.println("++++++++++++++++++++++++++++++++Begin to find all default theme++++++++++++++++++");
		List<DefaultTheme> results = (List<DefaultTheme>) defaultThemeDAO.findAll();

		for (DefaultTheme theme : results) {
			System.out.println("####:" + theme.getTheme());
		}
		System.out.println("####:" + results.size());
		System.out.println("++++++++++++++++++++++++++++++++End to find all default theme++++++++++++++++++");
	}
}
