package com.performance.dashboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.performance.dashboard.entity.Benchmark;
import com.performance.dashboard.repository.BenchmarkDAO;

@Service
@Transactional
public class BenchmarkService {
	private BenchmarkDAO benchmarkDAO;

	public BenchmarkDAO getBenchmarkDAO() {
		return benchmarkDAO;
	}

	@Autowired
	public void setBenchmarkDAO(BenchmarkDAO benchmarkDAO) {
		this.benchmarkDAO = benchmarkDAO;
	}
	
	public List<Benchmark> getAllBenchmarks(){
		return (List<Benchmark>)benchmarkDAO.findAll();
	}
	
	public void deleteBenchmark(Long id) {
		benchmarkDAO.delete(id);
	}
	
	public void saveBenchmark(Benchmark benchmark){
		benchmarkDAO.save(benchmark);
	}
	
	public Benchmark getBenchmark(Long id){
		return benchmarkDAO.findOne(id);
	}
}
