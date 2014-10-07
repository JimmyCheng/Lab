package com.performance.dashboard.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "ss_version")
public class Version extends IdEntity {

    private String name;
    
    private String status;

    public String getName() {
        return name;
    }

    public void setName(String title) {
        this.name = title;
    }

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
