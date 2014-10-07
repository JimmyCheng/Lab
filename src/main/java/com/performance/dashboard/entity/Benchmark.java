package com.performance.dashboard.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ss_benchmark")
public class Benchmark extends IdEntity {
    private Scenario scenario;
    private Platform platform;
    private Version version;
    private int result;

    @ManyToOne
    @JoinColumn(name = "scenario_id")
    public Scenario getScenario() {
        return scenario;
    }

    public void setScenario(Scenario scenario) {
        this.scenario = scenario;
    }

    @ManyToOne
    @JoinColumn(name = "platform_id")
    public Platform getPlatform() {
        return platform;
    }
    
    public void setPlatform(Platform platform) {
        this.platform = platform;
    }

    @ManyToOne
    @JoinColumn(name = "version_id")
	public Version getVersion() {
		return version;
	}

	public void setVersion(Version version) {
		this.version = version;
	}

	public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }
}
