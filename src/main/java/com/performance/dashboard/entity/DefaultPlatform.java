package com.performance.dashboard.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ss_default_platform")
public class DefaultPlatform extends IdEntity {
    
	private Platform platform;

    @ManyToOne
    @JoinColumn(name = "platform_id")
	public Platform getPlatform() {
		return platform;
	}    
    
	public void setPlatform(Platform platform) {
		this.platform = platform;
	}
}
