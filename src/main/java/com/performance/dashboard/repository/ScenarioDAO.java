package com.performance.dashboard.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.performance.dashboard.entity.Scenario;;

public interface ScenarioDAO extends CrudRepository<Scenario, Long> {
    public List<Scenario> findByGroupId(Long id);
    public Scenario getByName(String name);
;}
