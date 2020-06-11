package com.tsc.service;

import java.util.List;

import javax.validation.Valid;

import com.tsc.model.Teacher;
import com.tsc.model.User;
import com.tsc.model.UserLogin;

public interface UserService {

	String saveUser(@Valid User user);

	List<User> Adminid();

	public User getImages(String id);

	UserLogin validateUser(@Valid UserLogin user);

	List<String> getRole(String userId);

	boolean updateStatus(String userid, String status);

	User validateUser2(@Valid User user);

	String saveteacher(Teacher teacher);

	public List<User> sortByfirstNameAsc();

	public List<User> sortByfirstNameDsc();

}
