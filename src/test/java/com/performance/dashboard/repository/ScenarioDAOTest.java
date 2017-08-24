package com.performance.dashboard.repository;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.performance.dashboard.entity.Group;
import com.performance.dashboard.entity.Scenario;
import com.performance.dashboard.test.Profiles;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/applicationContext.xml" })
@ActiveProfiles(Profiles.UNIT_TEST)
public class ScenarioDAOTest  {

    @Autowired
    private ScenarioDAO scenarioDAO;

    @Test
    public void testFindAllTasks() throws Exception {
        List<Scenario> scenarios = (List<Scenario>) scenarioDAO.findAll();
        assertTrue(scenarios.size() > 0);
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
