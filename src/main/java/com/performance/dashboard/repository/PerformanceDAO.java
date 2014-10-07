package com.performance.dashboard.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.performance.dashboard.entity.Performance;

/*
 * For JAP usage, please refer to:
 * http://docs.spring.io/spring-data/data-jpa/docs/1.0.3.RELEASE/reference/html/#repositories.query-methods.query-creation
 */

public interface PerformanceDAO extends CrudRepository<Performance, Long>{
	
	public List<Performance> findByPlatformId(Long platformId);
	public List<Performance> findByPlatformIdAndScenarioId(Long platformId, Long scenarioId);
	public List<Performance> findByPlatformIdAndScenarioIdAndVersionId(Long platformId, Long scenarioId, Long versionId);
	
	//following function can also use query
	//@Query("select perf from Performance perf where perf.platformId =: platformId and perf.scenarioId =: scenarioId and perf.versionId =: versionId order by perf.created")
	public List<Performance> findByPlatformIdAndScenarioIdAndVersionIdOrderByCreatedDesc(Long platformId, Long scenarioId, Long versionId);
}