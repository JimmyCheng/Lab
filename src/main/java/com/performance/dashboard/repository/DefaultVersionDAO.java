package com.performance.dashboard.repository;

import org.springframework.data.repository.CrudRepository;
import com.performance.dashboard.entity.DefaultVersion;

public interface DefaultVersionDAO extends CrudRepository<DefaultVersion, Long> {
}
