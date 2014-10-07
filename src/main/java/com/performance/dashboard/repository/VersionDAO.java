package com.performance.dashboard.repository;

import org.springframework.data.repository.CrudRepository;

import com.performance.dashboard.entity.Version;

public interface VersionDAO extends CrudRepository<Version, Long> {
	public Version findByName(String name);
}

