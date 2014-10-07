package com.performance.dashboard.repository;

import org.springframework.data.repository.CrudRepository;

import com.performance.dashboard.entity.Platform;

public interface PlatformDAO extends CrudRepository<Platform, Long> {
	public Platform findByName(String name);
}

