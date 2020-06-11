package com.tsc.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tsc.dao.TeacherRepository;
import com.tsc.dao.UserRepository;
import com.tsc.entity.TeacherEntity;
import com.tsc.entity.UserEntity;
import com.tsc.model.Teacher;
import com.tsc.model.User;
import com.tsc.model.UserLogin;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserRepository userDao;
	@Autowired
	private ModelMapper modelMapper;
	@Autowired
	TeacherRepository teacherdao;

	@Override
	public String saveUser(User user) {

		// TODO Auto-generated method stub

		String result = "success";
		System.out.println(user.getStatus());

		UserEntity u = modelMapper.map(user, UserEntity.class);

		boolean found = userDao.existsById(user.getUserId());

		System.out.println("found=" + found);

		if (found)

		{
			result = "exists";

		}

		else {

			UserEntity res = userDao.save(u);

			if (res == null)

				result = "failure";

		}
		return result;

	}

	@Override
	public List<User> Adminid() {
		// TODO Auto-generated method stub

		List<UserEntity> adminList = userDao.adminIds();

		List<User> empDto = new ArrayList<>();

		for (UserEntity e : adminList)

		{
			User edto = modelMapper.map(e, User.class);

			empDto.add(edto);

		}
		System.out.println("service list size=" + empDto.size());

		return empDto;

	}

	@Transactional
	@Override
	public User getImages(String id) {
		Optional<UserEntity> findById = userDao.findById(id);
		if (findById.isPresent()) {
			UserEntity getImageDetails = findById.get();
			User u = modelMapper.map(getImageDetails, User.class);

			return u;
		} else {
			return null;
		}

	}

	@Transactional
	@Override
	public User validateUser2(User user) {
		User userDto = null;
		UserEntity u = userDao.validateUser2(user.getUserId(), user.getSecretQuestion(), user.getAnswer());
		if (u != null) {
			userDto = modelMapper.map(u, User.class);
		}
		System.out.println(userDto);
		return userDto;

	}

	@Override
	public UserLogin validateUser(@Valid UserLogin user) {
		UserLogin userDto = null;
		System.out.println("Teacherrole" + user.getRole());
		if (user.getRole().equals("Teacher")) {
			TeacherEntity t = teacherdao.valid(user.getUserId());
			System.out.println("the value of tttt" + t);
			if (t != null) {
				userDto = modelMapper.map(t, UserLogin.class);
				System.out.println("teacher" + userDto);
			}
		} else {
			UserEntity u = userDao.validateUser(user.getUserId(), user.getPassword(), user.getRole());
			if (u != null) {
				userDto = modelMapper.map(u, UserLogin.class);
			}
		}
		return userDto;

	}

	@Override
	public List<String> getRole(String userId) {
		List<String> adminList = new ArrayList<>();
		Optional<UserEntity> entity = userDao.findById(userId);
		
		if (entity.isPresent()) {
			adminList.add(entity.get().getRole());
			adminList.add(entity.get().getStatus());
		} 
		return adminList;
	}

	@Transactional
	@Override
	public boolean updateStatus(String userId, String status) {
		// TODO Auto-generated method stub
		boolean result = false;
		int res = userDao.updateStatus(userId, status);
		System.out.println("rows updated=" + res);
		if (res > 0)
			result = true;
		return result;
	}

	@Override
	public String saveteacher(Teacher teacher) {
		// TODO Auto-generated method stub

		String result = "success";

		TeacherEntity u = modelMapper.map(teacher, TeacherEntity.class);

		boolean found = userDao.existsById(teacher.getUserId());

		System.out.println("found=" + found);

		if (found)

		{
			result = "exists";

		}

		else {

			TeacherEntity res = teacherdao.save(u);

			if (res == null)

				result = "failure";

		}
		return result;

	}

	@Override
	public List<User> sortByfirstNameAsc() {
		List<User> resultList = new ArrayList<>();
		List<UserEntity> firstNameList = userDao.sortByfirstNameAsc();
		for (UserEntity e : firstNameList) {
			User d = modelMapper.map(e, User.class);
			resultList.add(d);
		}
		return resultList;
	}

	@Override
	public List<User> sortByfirstNameDsc() {
		List<User> resultList = new ArrayList<>();
		List<UserEntity> firstNameList = userDao.sortByfirstNameDsc();
		for (UserEntity e : firstNameList) {
			User d = modelMapper.map(e, User.class);
			resultList.add(d);
		}
		return resultList;
	}

}
