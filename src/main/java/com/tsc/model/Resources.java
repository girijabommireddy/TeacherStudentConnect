package com.tsc.model;



public class Resources {

		private String resourceID;
	
		private String resourceDescription;
		
		private String skill;
		private String topic;
		private String title;
		private String author;
		private String subject;
		private String year;
		private String filename;
		private String userId;

		private byte[] content;

		private String contentType;

		
		
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

		public String getFilename() {
			return filename;
		}

		public void setFilename(String filename) {
			this.filename = filename;
		}

		public byte[] getContent() {
			return content;
		}

		public void setContent(byte[] content) {
			this.content = content;
		}

		public String getContentType() {
			return contentType;
		}

		public void setContentType(String contentType) {
			this.contentType = contentType;
		}

		public String getUserId() {
			return userId;
		}

		public void setUserId(String userId) {
			this.userId = userId;
		}

		
}