package com.performance.dashboard.dto;

/*
 * Note: this class might be not necessary. Look here for a better solution
 * http://stackoverflow.com/questions/13242394/spring-mvc-multiple-modelattribute-on-the-same-form
 */

public class ScenarioDTO {
	private Long id;
    private String name;
    private String description;
    private String group;
    
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}    
    
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}
}
