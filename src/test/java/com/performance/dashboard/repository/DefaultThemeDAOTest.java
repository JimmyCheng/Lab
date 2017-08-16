package com.performance.dashboard.repository;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import com.performance.dashboard.entity.DefaultTheme;

@ContextConfiguration(locations = { "/applicationContext.xml" })
public class DefaultThemeDAOTest extends SpringTransactionalTestCase{
	
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
