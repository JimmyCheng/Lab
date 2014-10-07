package com.performance.dashboard.repository;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import com.performance.dashboard.entity.Group;
import com.performance.dashboard.entity.Scenario;

@ContextConfiguration(locations = { "/applicationContext.xml" })
@ActiveProfiles("test")
public class ScenarioDAOTest extends SpringTransactionalTestCase {

    @Autowired
    private ScenarioDAO scenarioDAO;

    @Test
    public void testFindAllTasks() throws Exception {
        List<Scenario> scenarios = (List<Scenario>) scenarioDAO.findAll();
        assertEquals(24, scenarios.size());
    }

    @Test
    public void testAddTask() throws Exception {
        Scenario scenario = new Scenario();
        scenario.setDescription("Test Scenario Description");
        scenario.setName("Test");

        Group group = new Group();
        group.setName("Test Group");
        group.setPosition(100);
        group.setDescription("Test Group Description");
        scenario.setGroup(group);

        scenarioDAO.save(scenario);
    }
}
