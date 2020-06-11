package com.tsc.model;

import javax.validation.constraints.NotEmpty;

public class Addskill {
	@NotEmpty(message = "Please update the highlighted mandatory field(s)")
	private String resourceID;
	@NotEmpty(message = "Please update the highlighted mandatory field(s)")
	private String resourceDescription;
	@NotEmpty(message = "Please update the highlighted mandatory field(s)")
	private String skill;
	@NotEmpty(message = "Please update the highlighted mandatory field(s)")
	private String competencyLevel;
	@NotEmpty(message = "Please update the highlighted mandatory field(s)")
	private String intendedAudience;
	private String userId;
	private String topic;
	private String title;
	private String author;
	private String subject;
	private String year;

	public String getResourceID() {
		return resourceID;
	}

	public void setResourceID(String resourceID) {
		this.resourceID = resourceID;
	}

	public String getResourceDescription() {
		return resourceDescription;
	}

	public void setResourceDescription(String resourceDescription) {
		this.resourceDescription = resourceDescription;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public String getCompetencyLevel() {
		return competencyLevel;
	}

	public void setCompetencyLevel(String competencyLevel) {
		this.competencyLevel = competencyLevel;
	}

	public String getIntendedAudience() {
		return intendedAudience;
	}

	public void setIntendedAudience(String intendedAudience) {
		this.intendedAudience = intendedAudience;
	}
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

}
