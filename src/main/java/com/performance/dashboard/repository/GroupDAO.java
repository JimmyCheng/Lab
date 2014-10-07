package com.performance.dashboard.repository;

import org.springframework.data.repository.CrudRepository;

import com.performance.dashboard.entity.Group;

public interface GroupDAO extends CrudRepository<Group, Long> {
	public Group findByName(String name);
}
