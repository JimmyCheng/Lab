package com.performance.dashboard.repository;

import org.springframework.data.repository.CrudRepository;

import com.performance.dashboard.entity.Benchmark;

public interface BenchmarkDAO extends CrudRepository<Benchmark, Long> {
	Benchmark findByPlatformIdAndScenarioIdAndVersionId(long platformID, long groupId, long versionId);
}
