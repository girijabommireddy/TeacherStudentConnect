package com.tsc.entity;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "addresource")
public class AddresourceEntity  {
	


	@Id
	@Column(name = "Resource_ID", length = 30)

	private String resourceID;
	@Column(name = "Resource_Description")
	private String resourceDescription;
	@Column(name = "skill", length = 30)
	private String skill;
	@Column(name = "competencyLevel", length = 30)
	private String competencyLevel;
	@Column(name = "intendedAudience", length = 30)
	private String intendedAudience;
	@Column(name = "topic", length = 30)
	private String topic;
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "userId", referencedColumnName = "userId", nullable = false)
	private UserEntity userId;

	@Column(name = "title", length = 30)
	private String title;

	@Column(name = "author", length = 30)
	private String author;

	@Column(name = "subject", length = 30)
	private String subject;

	@Column(name = "year", length = 30)
	private String year;

	@Column(name = "content", length = 30)
	@Lob
	private Blob content;

	@Column(name = "content_type", length = 30)
	private String contentType;
	private String status;

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

	public Blob getContent() {
		return content;
	}

	public void setContent(Blob content) {
		this.content = content;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public UserEntity getUserId() {
		return userId;
	}

	public void setUserId(UserEntity userId) {
		this.userId = userId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
