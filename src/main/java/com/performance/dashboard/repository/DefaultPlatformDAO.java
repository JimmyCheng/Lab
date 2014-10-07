package com.performance.dashboard.repository;

import org.springframework.data.repository.CrudRepository;
import com.performance.dashboard.entity.DefaultPlatform;

public interface DefaultPlatformDAO extends CrudRepository<DefaultPlatform, Long> {
}

