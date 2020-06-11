package com.tsc.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class UserEntity  {
	


	@Column(name = "firstName", length = 30)
	private String firstName;

	@Column(name = "lastName", length = 30)
	private String lastName;
	@Column(name = "dob", length = 30)
	private String dob;

	@Column(name = "gender", length = 30)
	private String gender;
	@Column(name = "contactNumber", length = 30)

	private String contactNumber;
	@Id
	@Column(name = "userId", length = 30)
	private String userId;
	@Column(name = "password", length = 30)
	private String password;
	@Column(name = "status", length = 30)
	private String status;
	@Column(name = "role", length = 30)
	private String role;
	@Column(name = "answer", length = 30)
	private String answer;
	@Column(name = "secretQuestion", length = 50)
	private String secretQuestion;
	
	@OneToMany(mappedBy = "userId", fetch = FetchType.LAZY)
	private Set<AddresourceEntity> resource;
	@OneToMany(mappedBy = "userId", fetch = FetchType.LAZY)
    private Set<TeacherEntity> teacher;
	@Lob
	@Column(name = "pic")
	private byte[] picture;

	public byte[] getPicture() {
		return picture;
	}

	public void setPicture(byte[] picture) {
		this.picture = picture;
	}

	public String getSecretQuestion() {
		return secretQuestion;
	}

	public void setSecretQuestion(String secretQuestion) {
		this.secretQuestion = secretQuestion;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

}
