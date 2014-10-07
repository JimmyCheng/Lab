package com.performance.dashboard.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ss_performance")
public class Performance extends IdEntity {
    private Scenario scenario;
    private Platform platform;
    private int result;
    private Version version;
    private Date created;
    private String jenkins;

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
    
	public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }
    
    public String toString(){
    	return "Scenario ID:" + getScenario().getId() + 
    			" Platform ID:" + getPlatform().getId() + 
    			" Version:" + getVersion().getName() + 
    			" Result:" + getResult() + 
    			" Created:" + getCreated();
    }

	public String getJenkins() {
		return jenkins;
	}

	public void setJenkins(String jenkins) {
		this.jenkins = jenkins;
	}
}
