package com.performance.dashboard.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ss_default_version")
public class DefaultVersion extends IdEntity {
    
	private Version version;


    @ManyToOne
    @JoinColumn(name = "version_id")
	public Version getVersion() {
		return version;
	}

	public void setVersion(Version version) {
		this.version = version;
	}
}
